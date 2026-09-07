# Stage 138 critical-path plan — Pass 1: read and summary

- Date: 2026-08-09.
- Scope: zero-machine-time review of the frozen S32 evidence, exact ifort report, prior skew probes, contact-communication experiments, and official/upstream ROMS material.
- Current valid champion: S32 job `118755216`, `1753.876 s`, official `26/26 PASS`.
- No ROMS source, formula, grid, input, output, MPI partition, remote job, or model output was changed.

## What remains established

1. The only near-gate unresolved behavior is persistent fine-grid arrival skew around `step2d` and subsequent halo synchronization. Its perfect-rebalance ceiling is only `1.81-2.57%` of diagnostic wall.
2. Stage 127 found a strong negative correlation (about `-0.883`) between per-rank `step2d` work and later 4-D halo waiting: ranks that compute longer wait less. Ordinary 3-D hotspots do not show the same critical-rank alignment.
3. Stage 95's sparse `get_contact2d/get_persisted2d` owner map reduced point gathering by about `22.3%`, but wall regressed `2.29%`; repeated allocation and tiny point-to-point records outweighed the saved collective.
4. The production 8x8 decomposition is already the minimum-perimeter factorization for both grids. Generic rank mapping, 128 MPI ranks, generic OpenMP, overlap, shared-memory halo, MPI-library switching, I/O and compiler sweeps are closed.
5. The Stage-134 IPO report for `step2d` contains 139 vectorized and 110 non-vectorized loop records in the inspected function segment. Most non-vectorized records are outer loops whose inner loop is already vectorized or loops rejected by the compiler cost model; the report also contains extensive unaligned/assumed-stride diagnostics. This is not evidence for a broad forced-SIMD campaign.

## New observation

The project has never mapped immutable nesting contact-point indices to the existing 8x8 rank tiles. That zero-run map can test whether the observed late-rank pattern follows nesting contact density/ownership. It is the cheapest discriminator between a contact-supply mechanism and pure `step2d` compute imbalance.

## Source/research boundary

- Official ROMS material describes horizontal tile decomposition and directional halo exchange, and shows that nesting repeatedly calls `get_contact2d/get_contact3d` using contact metadata prepared outside the model.
- Upstream ROMS has historically optimized nesting assembly/aggregation communication, so contact-local communication is a legitimate implementation direction, but it does not prove a gain in this build.
- China-priority regional-ocean-model literature supports measuring decomposition/communication balance; it does not provide an immediately transferable >2% patch for this exact code.

## Pass-1 decision

Proceed only to a zero-run contact-density model. Do not build or submit another speculative compute optimization.

