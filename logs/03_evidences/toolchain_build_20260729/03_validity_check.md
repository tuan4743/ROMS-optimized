# Pass 3 - Build evidence validity check

- Date: 2026-07-29
- Job: `118169519`

## Checks

- The job completed with exit code zero and produced an executable binary.
- The compiler-rule SHA-256 is `a2a6feca1b4bb4271c5d7e4810417939bb0812ec0068e3686b364469556b773f`.
- Passing-source hashes were recorded before compilation. In particular, `distribute.F` is `f03d0175...` and `nesting.F` is `9e9e7f3b...`; the five audited hotspot sources also match the passing baseline manifest.
- The original passing binary is still `903360ee...`, proving the isolated build did not overwrite it.
- The build used private paths only. No file was written below `/public/share` or the team `~/lsd` tree.
- The OpenMP-token file is empty and `ldd` contains no `libgomp`.

## Three-pass verdict

- Pass 1 valid: yes, for compilation success and artifact identity.
- Pass 2 valid: yes, for build-resource and linkage characterization.
- Pass 3 valid: yes, the first two passes are supported by independent status, hashes, log scan, and dynamic-link evidence.
- Runtime accuracy proven: no.
- Runtime performance proven: no.
- Next task justified: yes, run the unmodified full input at the baseline layout (64 MPI ranks, 8x8 tiles) and apply the official validator.
- Output deletion: not applicable; this build task generated no model output.
