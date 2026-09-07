# Second analysis: delta and performance-evidence profiling

Date: 2026-08-01

## Synchronization profile

The pre-merge population was dominated by identical content: 93/98 BN files matched the destination byte-for-byte by SHA-256. Only five paths required action. Two were additions and three were reviewed as append-only updates, so a selective merge was used instead of a mirror operation. No deletion was necessary.

Imported hashes:

- Official-PPT transcription: 78B395646E756BAFA5AF6DCBF8A9E8EB0A463691602BE4A25904BEDE25403FEE
- SESSION_MEMORY.md: 3BF429ED1256290C2B39158D9180B24C3EAEB63331CB9D0661508553AEE9365E
- OPTIMIZATION_LOG.md before Stage 28 append: CF4DC1A0B3327310B234D3F5E20296CDFB450ADE546ABE98BE72E9CCB37D4B63
- Imported progress.md: 747283D3C3A0BEB44B1C0BDE93800040629E3A8C0890B415E206C005B227AF34
- Imported rules.md: 2A5223E9B7C130B6551306A10E87532ED5D204EF0F33E2118FBA0E9703AFCFF4

## Performance evidence carried by the snapshot

- EXP-0003 reference: 5412.96 s.
- EXP-0006 norecvzero full run: 5126.75 s, an imported improvement of 286.21 s or about 5.29%.
- Official validator job 118361271 is recorded as 26/26 PASS.
- Half-day norecvzero improvement (-5.01%) and full-run improvement (-5.29%) are internally consistent.
- HCOLL half-day timing cannot be promoted: the half-day run did not cross the output interval, while full job 118333863 timed out in WRT_HIS. This is a useful negative result, not a scoring result.

## Profiling boundary

This pass profiles the synchronized evidence and its internal consistency. It does not claim fresh remote profiling, live queue state, or independent NetCDF validation.

## Pass verdict

VALID. The five-file delta is minimal and the imported performance conclusion is internally supported, with the failed HCOLL route and remote-verification boundary explicitly separated.
