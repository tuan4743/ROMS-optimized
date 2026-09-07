# Mandatory PLAN after step2d and pre_step3d ineffective directions

## Trigger and lifecycle

- Date: 2026-08-01 after Stage 51.
- Trigger: two consecutive ineffective directions after the Stage-48 reset: exact `step2d` end-exchange deletion ceiling `1.895609%`, then `pre_step3d` metric-reuse A-B-B-A regression `1.797674%` with only `0.165335%` predictor-timer improvement.
- Model experiments stopped before this PLAN. Stage-51 three analyses exist and are valid; successful job `118372618` and failed pre-model job `118372547` resolve inside the private tree, contain zero NetCDF and remain retained. Nothing was deleted.

## Research reviewed

China-priority sources:

- NEMO code-modernization study from Shandong University/First Institute of Oceanography: compiler options, scalar/SIMD work, memory-bandwidth optimization and multicore expansion; reported 31% overall on its platform. <https://www.ams-journal.org.cn/website/cn/article/pdf/preview/10.3969/j.issn.1671-6647.2021.01.007.pdf>
- Chinese swPOM on Sunway TaihuLight: architecture-specific master/slave acceleration and communication work. <https://crad.ict.ac.cn/en/article/doi/10.7544/issn1000-1239.2019.20180791>
- Chinese swNEMO: bandwidth-oriented CPE cache/DMA and mixed-precision reconstruction. <https://gmd.copernicus.org/articles/15/5739/2022/>

Similar/open-source sources:

- NEMO 4 communication/decomposition paper: remove/group communication, compare medians under platform variability, and map ranks into square node blocks to reduce inter-node neighbor edges. <https://gmd.copernicus.org/articles/15/1567/2022/>
- Official ROMS merged MPI_GATHERV/MPI_SCATTERV work. <https://github.com/myroms/roms/pull/40>

## Exact O33 mapping finding

- Exact O33 `ROMS/Utility/mp_exchange.F`, SHA-256 `c66ab7bb...e577a`, constructs tiles with `j` outer, `i` inner: `rank=j*NtileI+i`. At 8x8 this is `rank=j*8+i` on both grids.
- The current rankfile assigns contiguous ranks 0-15, 16-31, 32-47 and 48-63 to the four nodes. Each node therefore owns an 8x2 horizontal stripe.
- A rankfile-only alternative assigns each node one 4x4 tile block while keeping every MPI rank, tile, core pair, binary and input unchanged.
- Exact nonperiodic cardinal-edge enumeration: current stripes have 24 inter-node and 88 intra-node edges; four 4x4 blocks have 16 inter-node and 96 intra-node edges. Inter-node edges fall by one third.
- Reproducible audit: `source_evidence/rank_mapping_edgecut.py` SHA-256 `a7e19c46...c4848`; JSON `481e9ffb...aed79`.

## Result

Decision: **SELECT_P0_SQUARE_NODE_RANK_MAPPING**. One mapping-only diagnostic A-B-B-A is authorized at `144/720` with the immutable O33 binary. No source build, input change, tile change, half-day or full run is authorized yet.

