import itertools, json
from pathlib import Path
import numpy as np

ROOT = Path(r"C:\Users\Fu Jiake\Documents\MCC")
AUDIT = json.load(open(ROOT / "tmp" / "stage151_grid_contact_mask_full.json", encoding="utf-8-sig"))
P3 = next(ROOT.rglob("o33_skew_probe_118537688/raw/skewprobe_P3.tsv"))

PHYSICAL = {
    "Model 2D kernel", "2D/3D coupling, vertical metrics", "Omega vertical velocity",
    "Equation of state for seawater", "Biological module, source/sink terms",
    "Pressure gradient", "Harmonic stress tensor, S-surfaces",
    "3D equations right-side terms", "3D equations predictor step",
    "Corrector time-step for 3D momentum", "Corrector time-step for tracers",
    "GLS vertical mixing parameterization", "Biharmonic mixing of tracers, S-surfaces",
    "Biharmonic mixing of tracers, geopotentials", "Tidal forcing",
}


def load_targets():
    y = {1: np.zeros(64), 2: np.zeros(64)}
    step2d = {1: np.zeros(64), 2: np.zeros(64)}
    for line in open(P3, encoding="utf-8"):
        p = line.split(); r, g, sec = int(p[0]), int(p[1]), float(p[4])
        label = " ".join(p[5:]).split(".")[0].strip()
        if label in PHYSICAL: y[g][r] += sec
        if label == "Model 2D kernel": step2d[g][r] = sec
    return y, step2d


def prefix(a):
    return np.pad(np.asarray(a, dtype=float), ((1, 0), (1, 0))).cumsum(0).cumsum(1)


def rect(p, x0, x1, y0, y1):
    return p[y1, x1] - p[y0, x1] - p[y1, x0] + p[y0, x0]


def fields(g):
    item = AUDIT[f"grid{g}"]; mm, lm = item["shape"]
    wet = np.array([[c == "1" for c in row] for row in item["mask_rows01"]], dtype=float)
    rec = np.zeros((mm, lm)); don = np.zeros((mm, lm))
    pts = AUDIT["contact_points0"][str(g)]
    for kind, a in (("receiver", rec), ("donor", don)):
        ii = np.clip(np.array(pts[f"{kind}_i0"], int), 0, lm - 1)
        jj = np.clip(np.array(pts[f"{kind}_j0"], int), 0, mm - 1)
        np.add.at(a, (jj, ii), 1)
    return lm, mm, {"wet": prefix(wet), "recv": prefix(rec), "donor": prefix(don)}


def features(g, ic, jc, mode):
    lm, mm, ps = DATA[g]; rows = []
    for j in range(8):
        for i in range(8):
            w, h = ic[i+1]-ic[i], jc[j+1]-jc[j]
            work = w*h if mode == "area" else rect(ps["wet"], ic[i], ic[i+1], jc[j], jc[j+1])
            rows.append([work,
                         rect(ps["recv"], ic[i], ic[i+1], jc[j], jc[j+1]),
                         rect(ps["donor"], ic[i], ic[i+1], jc[j], jc[j+1]),
                         w+h])
    return np.asarray(rows, float)


def nnls_with_intercept(x, y):
    best = None
    for mask in itertools.product((0, 1), repeat=x.shape[1]):
        use = [q for q, v in enumerate(mask) if v]
        z = np.column_stack([np.ones(len(y)), x[:, use]])
        b = np.linalg.lstsq(z, y, rcond=None)[0]
        if any(v < -1e-12 for v in b[1:]): continue
        pred = z @ b; sse = float(((y-pred)**2).sum())
        if best is None or sse < best[0]:
            coef = np.zeros(x.shape[1]); coef[use] = b[1:]
            best = (sse, float(b[0]), coef, pred)
    return best


def uniform(n): return [q*n//8 for q in range(9)]


def optimize(mode, targets):
    cuts = {g: [uniform(DATA[g][0]), uniform(DATA[g][1])] for g in (1,2)}
    models = {}
    for g in (1,2):
        x = features(g, *cuts[g], mode); fit = nnls_with_intercept(x, targets[g])
        sse, b0, b, pred = fit
        r2 = 1-sse/float(((targets[g]-targets[g].mean())**2).sum())
        models[g] = (b0,b,r2)
    def predall(cs):
        return sum(models[g][0] + features(g,*cs[g],mode) @ models[g][1] for g in (1,2))
    base = predall(cuts); history=[]
    for sweep in range(12):
        changed=False
        for g in (1,2):
            for axis in (0,1):
                n = DATA[g][axis]
                minw = max(12, n//16)
                for q in range(1,8):
                    old=cuts[g][axis][q]; best=(float(predall(cuts).max()),old)
                    lo=cuts[g][axis][q-1]+minw; hi=cuts[g][axis][q+1]-minw
                    for v in range(lo,hi+1):
                        cuts[g][axis][q]=v; obj=float(predall(cuts).max())
                        if obj < best[0]-1e-10: best=(obj,v)
                    cuts[g][axis][q]=best[1]
                    changed |= best[1] != old
        history.append(float(predall(cuts).max()))
        if not changed: break
    final=predall(cuts)
    return {"mode":mode,
            "models":{str(g):{"intercept":models[g][0],"coef_work_recv_donor_perimeter":models[g][1].tolist(),"r2":models[g][2]} for g in (1,2)},
            "base_max":float(base.max()),"base_mean":float(base.mean()),
            "final_max":float(final.max()),"final_mean":float(final.mean()),
            "predicted_critical_reduction_pct":float(100*(base.max()-final.max())/base.max()),
            "cuts":{str(g):{"i0":cuts[g][0],"j0":cuts[g][1]} for g in (1,2)},
            "history":history}


DATA={g:fields(g) for g in (1,2)}
targets, step2d=load_targets()
result={"physical_area_model":optimize("area",targets),
        "physical_wet_sensitivity":optimize("wet",targets),
        "step2d_area_model":optimize("area",step2d)}
print(json.dumps(result, indent=2))
