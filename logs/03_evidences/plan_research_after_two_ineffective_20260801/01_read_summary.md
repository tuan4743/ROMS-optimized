# Pass 1 - Read and summarize the next optimization space

## Scope and lifecycle

- Date: 2026-08-01.
- Immutable parent: `/public/home/fujiake/fjk/agent_tmp/isolated/imports/nan_O33_final_20260801/ROMS_CoSiNE15`.
- Previous static task produced no model output. The preceding short diagnostic root has four empty `output` directories and zero NetCDF files, so there is no model output eligible or necessary to delete. Logs and evidence remain retained.
- This pass performed read-only remote inspection and web research only. It did not modify `/public/share`, teammate trees, the O33 parent, input data, physics, grids, time stepping, output settings, or nesting.

## O33 source observations

- `ROMS/Nonlinear/step3d_t.F`: SHA-256 `450c98928488310a7b0312596a1411312fecf7439396667857ace71271e5b62e`, 1325 lines, based on ROMS revision 830 from 2017 plus team changes.
- `ROMS/Nonlinear/pre_step3d.F`: SHA-256 `de54caa236e6c54e6c733d505043e68da968c87a8b572810b3fd40fa2598721b`, 1158 lines, based on ROMS revision 840 from 2017 plus team changes.
- O33 `step3d_t.F` has three explicit OpenMP parallel loops at source lines 311, 349 and 680. Its O25 change already places `K_LOOP` outside `T_LOOP` in the horizontal tracer path, so it already attempts metric/flux locality across tracers. O46's adjacent-region `nowait` experiment was ineffective.
- O33 `pre_step3d.F` has four explicit OpenMP parallel loops at source lines 343, 596, 833 and 916. Earlier `nowait`, extra cache buffers, global blocking, and broader memory-kernel OpenMP variants were ineffective.
- The active O33 MPDATA path groups all tracer fields in one `mp_exchange4d` call before the horizontal computation. The current official ROMS development source instead has runtime-selected advection and may call `mp_exchange3d` inside the per-tracer loop for MPDATA or HSIMT. Therefore, upstream code is a source of ideas, not a patch to copy wholesale.

## Primary research, China-priority first

1. [swPOM on Sunway TaihuLight](https://crad.ict.ac.cn/fileJSJYJYFZ/journal/article/jsjyjyfz/HTML/2019-7-1556.shtml) identifies the frequently iterated external mode as a major hotspot and uses MPI plus fine-grained loop parallelism. It also describes nonblocking halo exchange with interior computation, but notes that useful asynchronous work is difficult to expose in a complex ocean model. The Sunway master/slave details are platform-specific; the dependency requirement is portable.
2. [swNEMO v4.0](https://gmd.copernicus.org/articles/15/5739/2022/) recommends balanced, near-square horizontal subdomains to reduce halo area, reports memory-bandwidth pressure in stencil kernels, and overlaps computation with communication/I/O on Sunway. O33 already uses square 8x8 tiling at 64 ranks, so this does not justify another blind Ntile scan.
3. [LICOM kilometer-scale ocean model, SC24](https://yuyue.github.io/res/paper/OceanModel-SC2024-GB%20Finalists.pdf) identifies tracer advection as a complex three-dimensional stencil bottleneck, distinguishes pack/unpack from exchange, removes redundant packing, overlaps compute and communication, and changes 3-D halo layout for architecture-specific locality. The portable leads are redundant data movement and a real interior/boundary split; its GPU/Sunway layout rewrites are too invasive for the remaining contest time.
4. [OMARE/JASMIN refactoring of NEMO](https://gmd.copernicus.org/articles/16/679/2023/) separates communication from computation before componentization. The full refactor took about 32 person-months, so only a single-call-site dependency audit is proportionate here.
5. [NEMO 4.0 communication efficiency](https://gmd.copernicus.org/articles/15/1567/2022/) first located the routines responsible for almost all communications, then removed provably unnecessary exchanges or grouped indispensable ones. Its central lesson is to reduce a demonstrated communication count or wait dependency, not merely replace blocking APIs.
6. [Official ROMS tracer-advection ticket 839](https://www.myroms.org/projects/src/ticket/839) documents per-tracer schemes and deliberately inlines HSIMT inside loops to avoid call overhead. Changing the configured scheme is forbidden here; inlining, active-path specialization guarded by the unchanged runtime scheme, and avoiding extra inner-loop calls remain legal implementation ideas.
7. [Current official ROMS `step3d_t.F`](https://github.com/myroms/roms/blob/develop/ROMS/Nonlinear/step3d_t.F) confirms that current upstream still contains large per-tracer stencil loops and tracer exchanges. It is not evidence of a ready speedup over O33.
8. [Intel ifort optimization reports](https://www.intel.com/content/www/us/en/docs/fortran-compiler/developer-guide-reference/2023-1/qopt-report-qopt-report-ifort-only.html) provide loop/vectorization diagnostics with negative reasons. This supports a zero-run next step using the existing ifort toolchain and exact O33 preprocessed sources.

## Pass 1 conclusion

The literature supports two remaining general mechanisms: remove memory traffic in the large tracer/predictor kernels, or remove/hide a proven halo dependency. It does not support a generic asynchronous-MPI edit, another square-tile scan, an upstream wholesale port, mixed precision, or an architecture-specific rewrite. Quantitative viability is evaluated in Pass 2.

