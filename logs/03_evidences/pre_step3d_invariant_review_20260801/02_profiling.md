# O33 pre_step3d cross-tracer invariant profiling analysis

## Pass 2: static hotspot and compiler evidence

The validated O33 full run is job `118346383`, shell `real=2142.793 s`, with all 26 official checks passing. Its `pre_step3d` predictor shares are `4.5543%` for Grid 01 and `13.6158%` for Grid 02, or `18.1701%` when the two printed timer shares are combined. A 2% whole-run improvement therefore needs an 11.0068% reduction of this entire combined predictor bucket; 3% needs 16.5109%.

## Exact redundancy

The active vertical update contains:

```fortran
cff1=cff*pm(i,j)*pn(i,j)
t(i,j,k,3,itrc)=DC(i,k)*(t(i,j,k,3,itrc)-                    &
                         cff1*(FC(i,k)-FC(i,k-1)))
```

Both grids use `N=34` and the model advances `NT=17` tracers. Consequently the two metric multiplications are repeated `34*17=578` times per `j,i` in this region, while their inputs remain unchanged. The proposed `real(r8)` scratch preserves the explicitly rounded `cff1` intermediate more closely than algebraically fusing or reassociating the expression.

## Static ceilings

- Deliberately favorable compute-count screen: the vertical flux plus update pair has roughly 12 elementary floating operations per cell; removing two gives a local `2/12=16.67%` ceiling. Applying that unrealistically to the entire combined predictor timer gives `18.1701%*16.67%=3.0284%` whole-run. This clears 2% only as an optimistic authorization ceiling.
- Memory-traffic screen: the two vertical loops move roughly 104 bytes per updated cell. Replacing the 16 bytes of `pm/pn` loads with one 8-byte scratch load saves at most about 8 bytes, or 7.69% of that local traffic before scratch setup. Applying even that to the entire predictor yields only about `1.3977%` whole-run.
- The real result is expected below the 3.0284% compute ceiling because the predictor timer also contains horizontal advection, diffusion, momentum, synchronization, and memory traffic. The compiler already vectorizes the target `i` loop, so this candidate removes operations/loads rather than unlocking vectorization.

## Experimental gate

One matched A1-B1-B2-A2 diagnostic at `144/720`, four nodes, 64 MPI ranks x 2 OpenMP threads, and unchanged 8x8/8x8 decomposition is allowed. Require all four runs to reach `ROMS/TOMS: DONE`, print both grid profiles, and share the same trajectory hash. Reject below 2%; do not promote an ambiguous 2%-3% result without profile support. A full run is not authorized by this analysis.

Pass 2 status: **VALID** as static profiling and experiment selection. No measured runtime gain is claimed.

