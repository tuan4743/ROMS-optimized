# Pass 3: independent validity check

## Verdict

**VALID. Passes 1 and 2 are internally consistent and supported by retained raw evidence. The final branch verdict is `STOP_BRANCH`.**

## Independent timing recomputation

Reading the copied raw `summary.tsv` independently gives:

- mean A `127.1965 s`;
- mean B `131.7065 s`;
- gain `-3.5456950466%`;
- all four return codes are zero and all four report `DONE=yes`;
- all four have `nc_count=0`, as required by this diagnostic;
- exactly one trajectory hash exists;
- strict reverse separation is true: the fastest B is slower than the slowest A.

These values reproduce `decision.txt` after rounding (`-3.5457%`, `STOP_BRANCH`).

## Raw-copy integrity

The local evidence hashes match the remote retained files:

| File | SHA-256 |
|---|---|
| `summary.tsv` | `5fa2aee113e022269f4c9d224bcd45ba7a5b7a86c81ef4add60d20be3abb132e` |
| `decision.txt` | `135b7f7cd6562f38639254afa86af069170051fa4e4d78b95956423809b54ab2` |
| A1 profile extract | `6c6a9e516a9e710e445d88eb07543b30f22975d2b96fa95cec5fbafb98d07acb` |
| B1 profile extract | `a319110a75ad65287a3f3ac37d2c8b1d744b88855073dd82e7f7b56902620d1f` |
| B2 profile extract | `b08a8445f2c8f7ecaf0e8cee76da38ba575ad120961fed394e8f7e85464b714f` |
| A2 profile extract | `2d2a86e7d8f206f6e6895ff1bdddd913bb89c709c840f79c7ec78209204e24e1` |

Remote recheck also confirms candidate binary SHA-256 `c061e82a...e7973` and zero NetCDF files under the retained run root.

## Pass 1 validation

Pass 1 correctly identifies the job, resources, immutable inputs, candidate causality, four timings, diagnostic trajectory scope and negative decision. It does not overclaim official accuracy. **Pass 1 is valid.**

## Pass 2 validation

The profile parser reads each grid independently. Its mean totals regress `3.719-3.720%`, consistent with the shell regression `3.5457%`. Direct target-timer arithmetic and the GLS/halo observations reproduce from `profile_mean_comparison.tsv`. The analysis labels the unchanged-GLS interaction as a hypothesis rather than a proven cause. **Pass 2 is valid.**

## Final experiment status

- The two-object AVX2 branch is closed and must not be used in a submission binary.
- No half-day/full run or official validator is authorized for this candidate.
- This is one ineffective runtime optimization after the completed PLAN reset. A second consecutive ineffective runtime direction would trigger the permanent PLAN/research rule again.
- Latest result root `/public/home/fujiake/fjk/mcc_runs/118368170_o33_avx2hot_abba_sample` remains retained through the next task. Preflight-only root `118368098...` also remains retained.
- Nothing is deleted at this task end. Deletion may be considered only when a new task starts and only after rechecking this exact private path and these three valid analyses.

All three passes are valid.
