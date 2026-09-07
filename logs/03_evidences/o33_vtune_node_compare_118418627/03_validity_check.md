# Stage 74 - Four-node comparison validity

- Pass 1 valid: **yes**. All four existing node result directories were read with the same VTune command and configuration.
- Pass 2 valid: **yes, for node-level hotspot consistency only**. The table correctly uses node-local aggregate sampled CPU seconds and does not present them as global wall-time percentages.
- The observed 20.70% `mp_exchange4d` range is real in the sampled report, but no causal mapping or network bottleneck is proven because the complementary UCX progress time shifts in the opposite direction and no per-rank critical-path timing was collected.
- Performance gain proven: **no**. Reproduction required: **no** for this negative mapping gate; future mapping work requires new rank-level critical-path evidence.
- Next authorized work: a no-model `perf` capability check. Output deletion: **no**; retain Stage-72 raw data and this Stage-74 evidence.
