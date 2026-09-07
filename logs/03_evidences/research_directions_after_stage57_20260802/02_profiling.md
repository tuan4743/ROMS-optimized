# Stage 58: quantitative direction filters

The decomposition literature recommends selecting tile factors by subdomain size/perimeter and load balance, not factor enumeration. For current O33 grid sizes, 8x8 is the only near-square 64-rank factorization and minimizes a rectangular perimeter proxy for both grids. This agrees with the measured failure of 128 rank scaling and does not justify an orientation run.

The temporary/stride audit has a different mechanism: pack/unpack or loss of unit-stride vectorization can occur inside an existing 64x2 compute hotspot without changing MPI decomposition. It is not yet a candidate performance claim. Its promotion gate is intentionally strict:

1. compiler report or assembly must prove temporary creation, non-unit-stride access, or alias-driven scalarization in an unclosed hotspot;
2. static call counts and measured hotspot share must give a conservative >=2% whole-run ceiling after retaining required work;
3. the proposed correction must preserve operations/order and avoid any precision, grid, physics, ecology, nesting, timestep and output changes.

If any condition fails, reject before build. This prevents general Fortran advice from becoming a blind source rewrite.

Profiling-pass validity: VALID as a source/profiling plan; no runtime measurement exists.
