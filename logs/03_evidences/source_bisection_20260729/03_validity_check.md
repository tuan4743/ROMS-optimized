# Pass 3 - Validity check

- Date: 2026-07-29
- Task: validate the source-lineage conclusions

## Validation checks

- The v22 and v24a build scripts were read directly; source composition is confirmed rather than inferred from variant names.
- SHA-256 proves the alleged v22 owner-reduce distribute file is unchanged from its staging base, but a third-pass comparison correctly found that this staging base already differs from the passing baseline distribute. The earlier wording was corrected before starting an experiment.
- Header and build-log checks found no active `REDUCE_ALLGATHER` or `COLLECT_ALLREDUCE` definition, so the conditional native uniform-reduction branch is not treated as a proven runtime cause.
- The official full validation failure is identical for v22, v24a, and v31, which is consistent with a shared earlier source/toolchain change.
- The sparse-contact diff directly shows local averaging plus active `mp_sum`, so the numerical-risk classification remains source-backed after the correction.
- No claim is made that sparse averaging is definitely the cause. GCC and the other hotspot source changes remain viable causes because no complete original-source GCC validation exists.
- The historical `final_gccstack128_mixed_full` directory has metadata only and no output, timing, or validation; it cannot close the compiler question.

## Three-pass verdict

- Pass 1 valid: yes.
- Pass 2 valid: yes as a prioritization and bisection result.
- Root cause proven: no.
- Next task justified: yes—build and fully validate original passing source with GCC 7.3.1 and no hotspot OpenMP source substitutions.
- Output deletion: not applicable; this task generated analysis files only.
