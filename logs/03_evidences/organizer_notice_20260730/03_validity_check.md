# Pass 3 - Notice interpretation validity check

- Date: 2026-07-30

## Checks

- `01:50:06` independently converts to `6606 s` or about 110 minutes; recording it as “about 90 minutes” would be materially inaccurate.
- The notice explicitly says maximum four nodes and 128 cores, not mandatory use of 128 cores.
- The notice explicitly permits proportional `NTIMES` reduction for debugging and explicitly requires the full three-day run for the final result.
- The notice explicitly states that DCU is unsupported.
- The `28.6590%` target reduction and `1.401718x` required speedup are arithmetic comparisons against this workflow's validated `9259.75 s` run.
- No job ID, hashes, raw timing log, or validator artifact accompanies `01:50:06`; it is therefore an authoritative organizer target but not independently reproduced evidence.

## Three-pass verdict

- Pass 1 valid: yes; it preserves the exact notice and separates diagnostic from final rules.
- Pass 2 valid: yes as a planning calculation; it does not claim the external benchmark was reproduced.
- Pass 3 valid: yes; wording, arithmetic, and evidence boundaries are consistent.
- Output deletion: not applicable; no model output was generated.

