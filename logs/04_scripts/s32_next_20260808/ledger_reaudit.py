#!/usr/bin/env python3
"""Recompute S32 wall shares and re-audit historical below-gate judgments."""
import re

S32_REAL = 114.526
S32_SUM_CPU = 9194.676
S32_MEAN_CPU = S32_SUM_CPU / 64.0
S32_FACTOR = S32_MEAN_CPU / S32_REAL  # 1.254447

O33_REAL = 2136.310
O33_SUM_CPU = 178516.604
O33_MEAN_CPU = O33_SUM_CPU / 64.0
O33_FACTOR = O33_MEAN_CPU / O33_REAL  # 1.305676

S32_PARENT_3DAY = 1753.9  # S32 champion parent wall (approx / measured)

print("==== denominators ====")
print("S32_sample_real", S32_REAL)
print("S32_sum_cpu", S32_SUM_CPU)
print("S32_mean_cpu", S32_MEAN_CPU)
print("S32_factor", S32_FACTOR)
print("O33_factor", O33_FACTOR)
print("profile_pct_sum_note", "G01+G02 compute+message CPU shares sum >100% because message timers nest inside compute")

# Absolute CPU-s from S32 sample profile (G01+G02), already computed earlier
s32_pools = {
    "set_avg (Processing of output time averaged data)": 175.023,
    "Writing of output data (SAMPLE only)": 0.177,
    "Processing of input data": 140.143,
    "Reading of input data": 173.728,
    "t3dmix S-surfaces (Biharmonic mixing, S-surfaces)": 432.227,
    "GLS vertical mixing": 1189.295,
    "3D predictor": 1479.184,
    "Corrector tracers": 1445.772,
    "Model 2D kernel": 958.553,
    "point data gathering": 159.478,
    "data scattering": 158.328,
    "data reduction": 122.991,
    "4D halo": 903.207,
}

print("==== S32 sample wall shares (CPU_s/64/REAL) ====")
for name, cpu in s32_pools.items():
    cpu_share = 100.0 * cpu / S32_SUM_CPU
    wall_share = 100.0 * (cpu / 64.0) / S32_REAL
    wall_via_factor = cpu_share * S32_FACTOR
    print(
        "%s | cpu%%=%.4f wall%%=%.4f via_factor%%=%.4f gate2=%s"
        % (name, cpu_share, wall_share, wall_via_factor, "YES" if wall_share >= 2.0 else "no")
    )

# O33 full absolute pools from Stage get_contact2d / model.log
o33_pools = {
    "set_avg": 3156.218,
    "Writing of output data": 2617.649,
    "Processing of input data": 659.825 + 2224.761,
    "t3dmix geopotentials (hmixing timer reuse historically)": 2243.781,
}

print("==== O33 full: historical CPU%% vs true wall%% ====")
for name, cpu in o33_pools.items():
    cpu_share = 100.0 * cpu / O33_SUM_CPU
    wall_share = 100.0 * (cpu / 64.0) / O33_REAL
    print(
        "%s | cpu%%=%.4f wall%%=%.4f | Stage1554 called below-gate on cpu%%; wall_gate2=%s"
        % (name, cpu_share, wall_share, "PASS" if wall_share >= 2.0 else "fail")
    )

print("==== Transfer Writing absolute wall-s to S32 parent (I/O scales with bytes, not compute) ====")
write_wall_s = 2617.649 / 64.0
print("Writing_wall_s_per_rank", write_wall_s)
print("share_on_O33", 100.0 * write_wall_s / O33_REAL)
print("share_on_S32_parent_if_abs_unchanged", 100.0 * write_wall_s / S32_PARENT_3DAY)
print("set_avg_wall_s", 3156.218 / 64.0)
print(
    "set_avg_share_on_S32_parent_if_abs_unchanged",
    100.0 * (3156.218 / 64.0) / S32_PARENT_3DAY,
)
print(
    "NOTE set_avg absolute DOES shrink with faster compute; prefer S32 sample wall%%=2.39"
)

# ending-site halo 1.396% from ortho sweep - need context; treat as CPU share candidate
print("==== ending-site halo 1.396%% (historical) with factors ====")
for label, fac, real in (("O33", O33_FACTOR, O33_REAL), ("S32", S32_FACTOR, S32_PARENT_3DAY)):
    # if 1.396 was already wall, stays; if CPU, multiply
    print(label, "if_cpu_then_wall%%", 1.396 * fac, "if_already_wall stays 1.396")
