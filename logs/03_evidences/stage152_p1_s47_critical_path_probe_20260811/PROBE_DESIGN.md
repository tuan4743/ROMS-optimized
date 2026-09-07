# Stage 152 PMPI probe design

## Why PMPI first

The current S47 champion is PGO-built. Rebuilding ROMS solely to insert timers
would introduce a large A-prime lineage confound. The diagnostic therefore
starts with a preloadable PMPI wrapper around the byte-identical champion.

The wrapper:

- records only process-local monotonic durations;
- records the local computation gap immediately preceding each MPI call;
- separates blocking `Send`, `Wait`, `Waitall`, and `Allreduce`;
- records caller address, message count, peer, and tag for offline cohorts;
- adds no MPI call, barrier, gather, or synchronization;
- performs no loop-time I/O and writes once per rank before finalize;
- caps retained events per rank.

## Interpretation boundary

An event is not itself an optimization opportunity. Offline analysis must map
the caller address against the exact S47 ELF and group only matching
`grid/caller/direction/topology/message-size` cohorts. A candidate exists only
when excess pre-call work and reduced next-sync duration pair on the same rank
and repeat in both clean legs with a conservative whole-wall ceiling above 2%.

If IPO prevents reliable address attribution, any rank drops events, or preload
overhead exceeds the gate, the probe is rejected rather than over-interpreted.
