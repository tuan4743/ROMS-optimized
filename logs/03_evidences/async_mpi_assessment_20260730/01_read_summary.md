# Pass 1 - Asynchronous MPI code assessment

- Date: 2026-07-30 (platform time)
- Question: can asynchronous MPI APIs alleviate the current communication bottleneck?
- Task boundary: read-only source assessment; no source edit, build, run, cancellation, or output deletion

## Exact source evidence

- Passing `distribute.F`: SHA-256 `f03d0175a421510bcb237351dd8c9cef04e1cf95f1713680921423f111342977`
- Passing `nesting.F`: SHA-256 `9e9e7f3b2acbcc54ad5199bbb52c0d1e7425c4fdfa946c5f938cb41bea807c12`
- Passing `mp_exchange.F`: SHA-256 `c66ab7bb6a855ab319a886f6ace110429b204efb26aa1aaf0785ff28a38e577a`

## Findings

1. The dominant nesting path calls blocking `mp_aggregate2d/3d`, which packs data, performs blocking `MPI_Allgather`, and immediately unpacks the complete global array.
2. `fine2coarse2d/3d` uses the gathered arrays immediately for averaging after a short sequence of consecutive aggregation calls for the field, `Adx`, `Ady`, and mask. There is no large independent compute region between the main field gather and its first consumer.
3. Replacing `MPI_Allgather` with `MPI_Iallgather` or `MPI_Iallgatherv` followed immediately by `MPI_Wait` would be nonblocking only in API form; it would expose almost no computation/communication overlap.
4. A real asynchronous design would have to split aggregation into begin/end phases, keep send/receive buffers alive, post the field collective, pack/post the metric and mask collectives in identical order on every rank, then wait and unpack. The available overlap is mainly small-array packing and collective setup, not the subsequent averaging kernel.
5. Halo exchange already posts `MPI_Irecv`, but then uses blocking `MPI_Send` and waits before unpacking. Merely converting sends to `MPI_Isend` still does not overlap communication with model computation; useful overlap would require an interior/boundary compute split.

## Initial conclusion

Asynchronous MPI can potentially reduce exposed wait time, but the current call graph offers only a narrow overlap window. It is a secondary optimization, not a substitute for reducing padded collective bytes with `MPI_Allgatherv`. Under the current time limit, do not add a standalone asynchronous experiment.
