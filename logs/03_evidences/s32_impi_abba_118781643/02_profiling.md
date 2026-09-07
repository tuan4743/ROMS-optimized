# 02_profiling — Stage 126 ImpI below-gate

## Scope

One matched W0-A1-B1-B2-A2 diagnostic on four exclusive nodes. Single causal axis: MPI stack (compile+link+runtime). Sources/flags (`Linux-ifort.mk` sha16 `38824c70`) unchanged; A uses HPC-X 2.7.4 `mpirun` + `coll_rules`; B uses ImpI 2021.3.0 `mpirun` + `I_MPI_PIN_DOMAIN=omp`.

## Observations

1. **Wall:** ImpI mean 138.2 s vs HPC-X 104.1 s → **−32.7%** (B slower). Both B legs slower than both A legs.
2. **Trajectory:** A legs byte-identical to historical champion print `fa498694…e44b0`. B1 and B2 each differ from A and from each other → ImpI path changes printed state (MPI reduction/order and/or binding), and is not run-to-run stable on this sample.
3. **Consistency with Stage 123:** wall is arrival-skew limited; swapping MPI libraries does not remove late-rank compute imbalance and here adds large overhead (likely pinning/progress/collective defaults vs tuned HPC-X+coll_rules).
4. **Counter-examples reinforced:** BcastHier null, HPC-X 2.11 vs 2.7.4 ≈0%, now ImpI **large regression**.

## Hypothesis (not required for stop)

ImpI `I_MPI_PIN_DOMAIN=omp` + hostfile placement may be a weaker match to the proven rankfile than HPC-X; plus missing `coll_rules` tuned path. Even a perfectly pinned ImpI would still need to beat skew — measured result already forbids promotion.

## Decision input

`BELOW_GATE_STOP`. Do not 1day/full. Do not retry ImpI under standing gates without a new, quantified critical-path mechanism.
