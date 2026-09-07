# Stage 54: independent validity check

Pass 1 and Pass 2 were checked against the raw Stage-53 `--report-bindings` lines and a fresh read-only platform `lscpu` result, not inferred from logical CPU numbering. The binding report explicitly names only `hwt 0` physical cores 0-31; the rankfile lists the same two-core pairs. All 16 ranks per node fit exactly into 32 physical cores, with four ranks in each of the four NUMA groups.

The conclusion is limited correctly: it rejects only an affinity-variable-only DOE with unchanged rankfile/rank count. It does not claim that every possible process mapping, MPI count, tile partition, or compiler change is impossible. No job was submitted, so there is no time, trajectory, NetCDF, or validator evidence to overstate.

Pass 1 valid: yes. Pass 2 valid: yes. Root cause and performance gain are not proven because this is static evidence; the insufficient mechanism for this narrow DOE is proven. Reproduction is not required. No output was generated and nothing may be deleted.
