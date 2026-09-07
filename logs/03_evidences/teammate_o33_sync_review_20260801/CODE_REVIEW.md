# O33 synchronized code review

Date: 2026-08-01

## Outcome

The synchronized nan O33 final package is suitable as the next optimization parent. Two complete full runs passed the official validator, and the archived package reproduces the exact binary and evidence chain. No blocking model-code defect was found.

This is teammate/inherited evidence. The current workflow synchronized and reviewed it but did not build or run it.

## Findings

### P1 - Harden the runner before any private reproduction

The archived runner successfully produced job 118346383, but it is not safe enough as a reusable experiment harness:

- It has absolute nan/backup paths and must not write there from our workflow.
- It does not gate the source archive, binary, full input, coll_rules.conf or validator hashes.
- The Python input rewrite records the replacement count in n but never asserts n equals one.
- The package base input is the authorized 144/720 diagnostic form. The full wrapper changes it to 2592/12960, but the result is not re-read and asserted before launch.
- With set -e enabled, a nonzero mpirun can exit before RC is captured and failure metadata is written.
- It checks only the two average files before validation, not ROMS/TOMS DONE or the complete 16-file manifest.

Evidence: source_evidence/evidence/sub_final_3day.sh lines 14, 52-81 and 107-120.

Required fix: create a private wrapper under fjk, use a unique output path, gate every hash, explicitly capture mpirun failure, assert one NTIMES rewrite, assert 8x8/8x8 and full steps, require DONE and 16 outputs, then run the official validator.

### P1 - Scope the norecvzero overlay to exactly two assignments

O33 distribute.F contains six Arecv zero-fill assignments. EXP-0006 proved safe removal only for the receive buffers in mp_aggregate2d and mp_aggregate3d, corresponding to O33 lines 5768 and 5975.

The other four assignments belong to different communication paths and have not been proven redundant. A broad replacement or transplant of the EXP-0006 distribute.F would discard O33 communication work and may corrupt data.

Required fix: apply a hash-gated two-site patch against O33 distribute.F SHA-256 e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a. Reject if the exact two contexts or total six-site count differ.

### P2 - Preserve the full O33 stack rather than cherry-picking isolated files

The optimized nesting and tracer paths are coupled:

- step3d_t calls collect_bry_fluxes after the horizontal tracer loop.
- nesting.F changes boundary-flux collection, owner-packed fine-to-coarse aggregation, sparse get_contact3d point-to-point exchange and debug-only mass-flux work.
- mod_nesting.F, main3d.F and set_contact.F jointly control safe reuse of vertical weights.
- distribute.F provides MPI_IN_PLACE reductions and packed assemble helpers consumed by nesting.
- Five hotspot sources require the matching selective OpenMP object flags and Intel OpenMP runtime.

Copying only nesting.F, step3d_t.F or Linux-ifort.mk would break lineage or silently omit a required companion change. Use the full archived source tree as the parent.

### P2 - Numerical order changes are real but repeatedly inside the official envelope

collect_bry_fluxes changes the order from per-level collective then vertical sum to local vertical sum then one collective. Owner-packed averaging and MPI reduction selection also change floating-point order. These are semantics-preserving implementation changes, not bitwise transformations.

Official full validations for jobs 118307015 and 118346383 both pass. Dongsha u is 0.000052 against a 0.000060 threshold, leaving a margin of 0.000008 or 13.33 percent of the threshold. Every derivative must still receive a full official validation.

### P3 - Runtime environment is explicit and reproducible

The O33 binary has unresolved Intel/NetCDF libraries on a bare login environment, but all dependencies resolve after loading the exact modules used by the run script. The final runner already loads Intel 2017.5.239, HPC-X 2.7.4, NetCDF 4.4.1 and HDF5 1.8.20.

Keep the module list and HCOLL disabled. Do not replace it with the failed HCOLL path.

## Source-diff summary versus EXP-0006

- ROMS tree: 17 reported differences including three retained diagnostic input files and one EXP-0006 backup; the active model differences reduce to 13 source/config paths.
- mp_exchange.F is byte-identical.
- nesting.F: +557/-64 lines.
- distribute.F: +284/-44 lines.
- step3d_t.F: +28/-3; pre_step3d.F: +15/-2.
- Biology, GLS and t3dmix changes are selective OpenMP directives.
- Linux-ifort.mk adds selective OpenMP linking and per-object no-heap-arrays.
- The O33 base input and the validated EXP-0006 full 8x8 input differ actively only in NTIMES; the full wrapper restores 2592/12960.

## Legal review

The package retains fixed physical grids, DT, NDTFAST, output variables/frequency, initial/boundary/forcing/ecology data and two-way nesting. It uses a legal 64 MPI x 2 OpenMP layout within the four-node/128-core ceiling and legal 8x8 tile decomposition. The changes are MPI implementation, redundant-work removal, loop organization, selective OpenMP and compiler/runtime configuration. Full validation remains the acceptance gate.
