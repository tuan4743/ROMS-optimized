# Stage 60 result — independent validity check

Raw re-read source: `/public/home/fujiake/fjk/mcc_runs/118401389_o33_f2c_vtype_abba_sample/{harness.log,summary.tsv,decision.txt,SHA256SUMS}` and each sample's `model.log`, `trajectory.txt`, and `profile_extract.txt`.

- Job identity is `118401389`; Slurm reports `COMPLETED` after `00:08:44` on four allocated nodes and 128 CPUs.
- Harness records matched run-script and patch hashes, immutable O33 parent binary/source hashes, candidate binary/source hashes, the diagnostic input hash, and matching 18 replacement assertions for each private input.
- Every sample has exit code 0, `ROMS/TOMS: DONE`, one identical trajectory SHA-256, and zero expected NetCDF outputs.
- The timing arithmetic in `decision.txt` agrees with `summary.tsv`: `127.458 s` vs `130.945 s`, gain `-2.7358%`, `both_B_faster=False`, verdict `STOP_BRANCH`.

Pass 1 valid: **yes**. Raw completion and time evidence supports the regression conclusion.

Pass 2 valid: **yes**. The independent profile extracts show the two-grid halo total rising and GLS rising substantially; they support rejection, while not proving a microscopic root cause.

Performance gain proven: **no**; the candidate regresses. Root cause proven: **no**; only the candidate-level regression is proven. Scoring validity: **no**, because this is shortened diagnostic input with no NetCDF and no official validator run. Reproduction is not required because the result is consistently negative (both B samples slower than both controls).

The raw output must be retained. It becomes eligible for deletion only at a later task start after a deliberate deletion-gate check; no deletion is authorized now.
