# 02 Profiling — clean-source full validation 118414346

- Timing scope: one uninstrumented full model run; official validation follows and is excluded from model `real`.
- Clean-source `real=2179.403 s`; immutable O33 reproduction `118405320=2136.310 s`. Clean is `43.093 s` slower, approximately `2.017%`.
- The clean full profile reproduces the short ABBA signature: GLS is materially higher than immutable O33. Grid-02 clean GLS is `21553.122` aggregate rank-CPU seconds versus immutable-O33 reproduction `17780.611`, about 21% higher.
- Other large clean Grid-02 buckets are predictor `24520.822` (13.3735%), tracer corrector `19507.269` (10.6391%), step2d `18418.599` (10.0454%), and 4-D halo `13506.954` (7.3666%).
- The result proves clean-source accuracy and portability, but crosses the predefined 2% delivery-regression boundary by a small margin. It is not a new performance best.
- The exact stale/incremental object interaction causing the GLS increase remains unresolved; timer evidence supports the location, not a complete root cause.
