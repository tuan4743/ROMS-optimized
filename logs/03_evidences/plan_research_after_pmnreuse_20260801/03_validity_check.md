# Mandatory PLAN validity check

## Independent checks

1. Trigger: Stage-49 and Stage-51 are two consecutive ineffective directions; mandatory research occurred before any new job.
2. Source mapping: exact O33 `mp_exchange.F` enumerates `j` outside `i`, proving `rank=j*8+i` for 8x8 tiles.
3. Current mapping: the retained Stage-51 rankfile contains ranks 0-15 on node 0, then 16-rank contiguous blocks on nodes 1-3, exactly the two-row-stripe model.
4. Edge audit: independent enumeration gives 112 nonperiodic cardinal edges, current 24 inter-node versus candidate 16; the one-third reduction is exact for both identically decomposed grids.
5. Rule scope: the candidate changes only rank-to-host placement. It does not change rank count, `NtileI/NtileJ`, physical grid, numerical scheme, time integration, input, output, ecology, nesting or source.
6. Quantitative gate: favorable 5.25987% whole-program ceiling crosses 2%, but depends on at least 38.0238% of halo time being inter-node-sensitive. Therefore one short matched diagnostic is justified, while a full run is not.
7. Research boundary: Sunway-specific and mixed-precision ideas are rejected; official ROMS gather/scatter and generic async routes do not match a remaining >2% O33 hotspot.
8. Lifecycle: all prior outputs remain retained; no NetCDF exists in the preceding short runs and nothing was deleted.

## Verdict

Pass 1 research/source read: **VALID**. Pass 2 quantitative mapping analysis: **VALID**. Pass 3 independent rule/gate check: **VALID**.

Final decision: **AUTHORIZE_ONE_MAPPING_ONLY_A-B-B-A**. Runtime benefit and official accuracy remain **UNVERIFIED**.

