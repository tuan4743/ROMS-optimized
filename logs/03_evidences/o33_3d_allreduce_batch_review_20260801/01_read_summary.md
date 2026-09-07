# Pass 1 - Read and preliminary summary

## Task

Map the dominant 3-D nesting Allreduce buckets from PMPI job `118370068` to exact O33 source and decide whether batching the tracer and momentum reductions merits a candidate build.

This is a zero-run/static task. No source, binary, MPI rule, input, job, NetCDF output, performance result, or accuracy result was created.

## Source anchors

- O33 `ROMS/Nonlinear/nesting.F` SHA-256 `9d8434c7c7291309d4dd281b4c8531dff7ee988bfc038590301484516b53795c`.
- O33 `ROMS/Utility/distribute.F` SHA-256 `e1de89f3a01974084a91b09bb6064b7e4ff0d67be8276aee7e8d10ef0dcb743a`.
- `nesting.F:3702-3720` loops over 17 tracers and calls `fine2coarse3d` once per tracer; lines 3725 and 3743 call the same routine for u and v.
- `fine2coarse3d` allocates `Packed(Npoints*(UBkF-LBkF+1))` at line 4500 and calls `mp_sum` at line 4529.
- `distribute.F:1620-1670` implements that 1-D `mp_sum` as one in-place `MPI_Allreduce(...,MPI_SUM,...)`.

## PMPI match

- 626,416-byte Allreduce: 2,448 calls/rank = `17 tracers x 144 coarse steps`.
- 613,088-byte Allreduce: 144 calls/rank = one u field per coarse step.
- 613,632-byte Allreduce: 144 calls/rank = one v field per coarse step.
- Together: 2,736 calls/rank = `19 fields x 144 coarse steps`, with `1.650180496 s/rank` measured time.

The message sizes and exact call-count identities make the mapping substantially stronger than a name-only source hypothesis.

## Preliminary decision

Reject before build unless Pass 2 finds a full-run upper bound above 2%. The candidate would concatenate approximately 11,875,792 bytes of field payload per coarse step, so batching can remove startup latency but cannot remove the payload reduction itself.

## Output lifecycle

The preceding collective-histogram task has all three valid analyses and zero NetCDF output. Its 614-KiB successful audit and incidental-failure audits remain retained; deletion is not applicable.
