param(
  [Parameter(Mandatory=$true)][string]$IpoReport,
  [Parameter(Mandatory=$true)][string]$OutputDir
)

$ErrorActionPreference='Stop'
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

$all=Get-Content -LiteralPath $IpoReport -Encoding utf8
$start=-1; $end=-1
for($i=0;$i -lt $all.Count;$i++){
  if($all[$i] -match '^Begin optimization report for: T3DMIX_MOD::T3DMIX4_TILE'){$start=$i;break}
}
if($start -lt 0){throw 't3dmix report section not found'}
for($i=$start+1;$i -lt $all.Count;$i++){
  if($all[$i] -match '^Begin optimization report for:' ){$end=$i-1;break}
}
if($end -lt 0){$end=$all.Count-1}
$section=$all[$start..$end]
$section | Set-Content -LiteralPath (Join-Path $OutputDir 't3dmix_ipo_section.txt') -Encoding utf8

$models=@(
  [pscustomobject]@{Variant='original';NonScratchDoubles=35;ScratchDoubles=17;TotalBytes=416;SavedBytes=0;LocalReductionPct=0;WholeCpuPct=0;StaticFeasibility='reference'},
  [pscustomobject]@{Variant='scratch_free_fantasy';NonScratchDoubles=35;ScratchDoubles=0;TotalBytes=280;SavedBytes=136;LocalReductionPct=32.6923;WholeCpuPct=1.6346;StaticFeasibility='infeasible upper bound: stencil needs retained rows'},
  [pscustomobject]@{Variant='rolling_rows_reload_coeff';NonScratchDoubles=35;ScratchDoubles=8;TotalBytes=344;SavedBytes=72;LocalReductionPct=17.3077;WholeCpuPct=0.8654;StaticFeasibility='feasible-order lower model'},
  [pscustomobject]@{Variant='rolling_rows_buffer_coeff';NonScratchDoubles=23;ScratchDoubles=12;TotalBytes=280;SavedBytes=136;LocalReductionPct=32.6923;WholeCpuPct=1.6346;StaticFeasibility='O(I) coefficient buffers; store/load cost retained'},
  [pscustomobject]@{Variant='register_microtile_fantasy';NonScratchDoubles=23;ScratchDoubles=4;TotalBytes=216;SavedBytes=200;LocalReductionPct=48.0769;WholeCpuPct=2.4038;StaticFeasibility='requires cross-row coefficient retention beyond practical AVX2 register budget'}
)
$models | Export-Csv -LiteralPath (Join-Path $OutputDir 'variant_model.csv') -NoTypeInformation -Encoding utf8

$summary=New-Object System.Collections.Generic.List[string]
$summary.Add('# Exact Stage 134 t3dmix compiler-report summary')
$summary.Add('')
$summary.Add("- Report section lines: $($section.Count)")
$summary.Add("- OpenMP parallelized remarks: $(($section | Select-String 'OpenMP DEFINED LOOP WAS PARALLELIZED').Count)")
$summary.Add("- Assumed-shape stride multiversion remarks: $(($section | Select-String 'Loop multiversioned for stride tests').Count)")
$summary.Add("- Vector-length-4 remarks: $(($section | Select-String 'vector length 4').Count)")
$summary.Add("- Vector-length-2 remarks: $(($section | Select-String 'vector length 2').Count)")
$summary.Add("- Vectorized-loop remarks: $(($section | Select-String 'LOOP WAS VECTORIZED').Count)")
$summary.Add("- Scalar-replacement remarks: $(($section | Select-String 'Array Refs Scalar Replaced').Count)")
$summary.Add('')
$summary.Add('The six main i-loops at source lines 221, 232, 247, 317, 327 and 340 all have vectorized unit-stride versions. The first/second flux and final update loops use AVX2 vector length 4 in the unit-stride version. The compiler emits runtime stride multiversioning for assumed-shape dummies; the fallback uses vector length 2 or strided-load emulation. Whole allocatable actual arrays are expected to select the unit-stride path, so eliminating the fallback is a code-size/dispatch opportunity, not a 40% kernel mechanism.')
$summary | Set-Content -LiteralPath (Join-Path $OutputDir 'machine_report_summary.md') -Encoding utf8

Write-Output "SECTION_LINES=$($section.Count)"
Write-Output "MULTIVERSION=$((($section | Select-String 'Loop multiversioned for stride tests').Count))"
Write-Output "VL4=$((($section | Select-String 'vector length 4').Count))"
Write-Output "VL2=$((($section | Select-String 'vector length 2').Count))"
