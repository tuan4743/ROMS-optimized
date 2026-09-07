# Pass 2 - Expected impact and decision

- Date: 2026-07-30 (platform time)
- Measured target: nesting data gathering and MPI collectives
- New model runs: none

## Why a bare asynchronous call is unlikely to help

MPI nonblocking completion is useful only when communication progresses while the application performs independent work. In the passing aggregate routine, the next operations are error checking and unpacking of the just-received buffer. Therefore:

```text
MPI_Iallgatherv -> MPI_Wait -> unpack
```

has essentially the same critical path as blocking `MPI_Allgatherv`, with request-management overhead added. Nonblocking MPI also does not by itself prove background progress; progress behavior must be verified for the exact HPC-X/Open MPI runtime and binding.

The only local nesting opportunity is a pipeline:

```text
post field Iallgatherv
pack/post Adx Iallgatherv
pack/post Ady Iallgatherv
pack/post mask Iallgatherv
wait in a consistent order
unpack in the original rank and field order
```

This can hide part of the main field communication behind packing and initiation of the smaller arrays. It cannot hide communication behind the coarse-grid averaging because averaging depends on all gathered arrays. Multiple outstanding collectives also increase buffer lifetime/memory pressure and require identical collective ordering on every rank.

For halo exchange, the existing receive-first/blocking-send/wait pattern has some communication concurrency but no compute overlap. A useful asynchronous halo implementation would need to calculate tile interiors after posting communication and boundaries after completion. That is much more invasive and inherited broad nonblocking variants have not established a scoring-valid result.

## Recommendation under the limited run budget

1. Keep S1 as blocking rank-ordered `MPI_Allgatherv`; first measure the benefit from eliminating padding and reducing bytes.
2. Do not combine asynchronous pipelining into S1, because it would obscure whether byte reduction worked and increase implementation risk.
3. Consider a begin/end `MPI_Iallgatherv` pipeline only if S1 passes accuracy but leaves a large aggregate wait fraction and sufficient time remains.
4. Reuse the S0 baseline for that optional comparison; at most one additional half-day async candidate is needed.
5. Skip the async branch entirely if S1 is ineffective: with little independent work, asynchrony is unlikely to recover a large loss that byte reduction could not improve.

No speedup estimate is defensible without a run because MPI progress and overlap efficiency are runtime-dependent.
