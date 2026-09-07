# Stage 75 - Static attribution and rejection

## P2: libm pow

`gls_corstep.F` contains hot-path expressions such as `gls**gls_exp1`, `tke**(-tke_exp1)`, `tke**tke_exp2`, and other variable/parameterized exponents. These are not a demonstrated constant-integer-power expansion. Replacing, reassociating or caching them could change floating-point execution order and is pending organizer item 2. Earlier biology CSE work is already closed below the whole-run gate.

Verdict: `POW_REWRITE_REJECT_BEFORE_BUILD`. No conservative >=2% end-to-end, semantics-preserving mechanism is established.

## P3: OpenMP fork/join

The four `pre_step3d` regions and three `step3d_t` regions are separated by producer/consumer phases, tracer intermediate-state writes, vertical flux work or MPI boundary exchange. The reviewed `step3d_t` region at line 311 is followed by an exchange before the later advection region; `pre_step3d` regions change intermediate tracer/continuity/flux arrays before later consumers. A generic persistent region or `nowait` insertion would require a complete array-dependence proof and currently has no quantified >=2% ceiling.

Verdict: `OPENMP_REGION_MERGE_REJECT_BEFORE_BUILD`. `__kmp_fork_call` remains an observational hotspot, not an authorized source change.
