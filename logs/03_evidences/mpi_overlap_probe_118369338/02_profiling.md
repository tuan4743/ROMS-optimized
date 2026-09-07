# Pass 2 - MPI overlap probe profiling analysis

Status: **VALID; P1 rejected by the whole-run upper bound**.

## Source dependency result

- The first `step3d_t` `mp_exchange4d` is followed by MPDATA work that consumes tracer halos. The only clean computation that can be moved between begin/end without splitting stencil loops is `oHz=1/Hz`.
- `pre_step3d` and the final `step3d_t` exchanges return immediately and expose no independent local work.
- O26/O26b already showed that replacing sends with nonblocking operations without caller work is neutral/negative. This probe therefore tests the missing condition: actual progress while independent work executes.

## Full-run projection

Use the official full step counts Grid01 `2592` and Grid02 `12960` and validated O33 full wall time `2142.793 s`.

- Measured rep=1 saving:
  - Grid01: `0.137562 ms * 2592 = 0.356563 s`.
  - Grid02: `0.081677 ms * 12960 = 1.058532 s`.
  - Total: `1.415095 s`, only `0.06604%` of O33.
- Optimistic network-only ceiling, assuming the entire communication phase for this call is hidden:
  - Grid01: `0.666417 ms * 2592 = 1.727353 s`.
  - Grid02: `0.483780 ms * 12960 = 6.269789 s`.
  - Total: `7.997142 s`, only `0.37321%` of O33.
- Required end-to-end gates are `42.85586 s` for 2% and `64.28379 s` for 3%.

The optimistic ceiling is only 18.66% of the 2% gate. A deeper interior/boundary split cannot hide more than this call's network phase and would add extra loop passes, OpenMP synchronization, boundary bookkeeping, and correctness risk.

## Probe caveats make the ceiling favorable, not pessimistic

- The probe posts four directions at once. ROMS currently completes E/W before packing S/N so that corner halos are correct; a semantics-preserving begin/end implementation may have two phases and less overlap.
- The probe omits ROMS packing/unpacking, which cannot be hidden after the send buffer is prepared or before received halos are consumed.
- Messages are approximate and intentionally rounded up.
- Intel emitted a warning because the probe passed its nonessential `-fp-model precise` option as one shell argument. That weakens exact compute-kernel matching, but it cannot invalidate the communication-only upper bound of 7.997 s.

Decision: `REJECT_BEFORE_ROMS_BUILD`. Do not implement or run a ROMS async candidate for this call site.
