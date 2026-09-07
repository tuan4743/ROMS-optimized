# First analysis: read and initial summary

Date: 2026-08-11 EDT

Stage 145 selected a single G4 source candidate on the frozen S32 archive. It fuses the non-MPDATA vertical-advection RHS producer with the immediately following implicit vertical-diffusion consumer inside each `j,itrc` column.

The candidate is locally prepared and remotely synchronized to a private script directory. No shared directory was modified, no build/model job was submitted, and no model output exists.

Current status: `STATIC_CANDIDATE_READY / BUILD_UNVERIFIED / QUEUE_BLOCKED`.

Queue snapshot at preparation time: one 4-node/128-core job running and two 4-node/64-core jobs pending under the team account. Public filesystem free space was about 80 GiB.

