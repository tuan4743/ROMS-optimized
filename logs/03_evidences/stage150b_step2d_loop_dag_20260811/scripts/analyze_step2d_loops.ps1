param(
  [Parameter(Mandatory=$true)][string]$Source,
  [Parameter(Mandatory=$true)][string]$IpoReport,
  [Parameter(Mandatory=$true)][string]$OutputDir
)

$ErrorActionPreference='Stop'
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
$src=Get-Content -LiteralPath $Source -Encoding utf8

$loops=New-Object System.Collections.Generic.List[object]
$id=0
for($i=0;$i -lt $src.Count;$i++){
  if($src[$i] -notmatch '^\s*DO\s+([A-Za-z][A-Za-z0-9_]*)\s*=\s*(.+)$'){continue}
  $var=$Matches[1]; $domain=$Matches[2].Trim(); $depth=1; $end=$i
  for($j=$i+1;$j -lt $src.Count;$j++){
    if($src[$j] -match '^\s*DO\s+'){$depth++}
    if($src[$j] -match '^\s*END\s*DO\b'){$depth--; if($depth -eq 0){$end=$j;break}}
  }
  $body=($src[($i+1)..([Math]::Max($i+1,$end-1))] -join ' ')
  $refs=[regex]::Matches($body,'\b([A-Za-z][A-Za-z0-9_%]*)\s*\(') | ForEach-Object {$_.Groups[1].Value.ToLowerInvariant()} | Sort-Object -Unique
  $writes=New-Object System.Collections.Generic.HashSet[string]
  foreach($line in $src[($i+1)..([Math]::Max($i+1,$end-1))]){
    if($line -match '^\s*([A-Za-z][A-Za-z0-9_%]*)\s*\([^=]*\)\s*='){$null=$writes.Add($Matches[1].ToLowerInvariant())}
  }
  $reads=$refs | Where-Object {-not $writes.Contains($_)}
  $id++
  $loops.Add([pscustomobject]@{
    Id=$id; StartLine=$i+1; EndLine=$end+1; Index=$var; Domain=$domain;
    NestedDoCount=([regex]::Matches($body,'\bDO\s+[A-Za-z]').Count);
    Writes=($writes | Sort-Object) -join ';'; Reads=$reads -join ';'
  })
}
$loops | Export-Csv -LiteralPath (Join-Path $OutputDir 'loop_inventory.csv') -NoTypeInformation -Encoding utf8

$barriers=New-Object System.Collections.Generic.List[object]
for($i=0;$i -lt $src.Count;$i++){
  if($src[$i] -match '^\s*CALL\s+([A-Za-z][A-Za-z0-9_]*)'){
    $barriers.Add([pscustomobject]@{Line=$i+1;Kind='CALL';Name=$Matches[1]})
  } elseif($src[$i] -match '^\s*IF\s*\(.+\)\s*RETURN'){
    $barriers.Add([pscustomobject]@{Line=$i+1;Kind='RETURN_GATE';Name='conditional return'})
  }
}
$barriers | Export-Csv -LiteralPath (Join-Path $OutputDir 'semantic_barriers.csv') -NoTypeInformation -Encoding utf8

$rep=Get-Content -LiteralPath $IpoReport -Encoding utf8
$start=-1;$end=-1
for($i=0;$i -lt $rep.Count;$i++){if($rep[$i] -match '^Begin optimization report for: STEP2D_MOD::STEP2D_TILE'){$start=$i;break}}
if($start -lt 0){throw 'step2d report section not found'}
for($i=$start+1;$i -lt $rep.Count;$i++){if($rep[$i] -match '^Begin optimization report for:'){$end=$i-1;break}}
if($end -lt 0){$end=$rep.Count-1}
$section=$rep[$start..$end]
$section | Set-Content -LiteralPath (Join-Path $OutputDir 'step2d_ipo_section.txt') -Encoding utf8

$summary=@(
  '# Exact S32 step2d static inventory',
  '',
  "- Source lines: $($src.Count)",
  "- DO heads: $(($src | Select-String '^\s*DO\s+').Count)",
  "- Parsed loop records: $($loops.Count)",
  "- CALL barriers: $($barriers.Count)",
  "- IPO section lines: $($section.Count)",
  "- Vectorized-loop remarks: $(($section | Select-String 'LOOP WAS VECTORIZED').Count)",
  "- Non-vectorized-loop remarks: $(($section | Select-String 'LOOP WAS NOT VECTORIZED').Count)",
  "- Stride multiversion remarks: $(($section | Select-String 'Loop multiversioned for stride tests').Count)",
  "- Scalar replacement remarks: $(($section | Select-String 'Array Refs Scalar Replaced').Count)"
)
$summary | Set-Content -LiteralPath (Join-Path $OutputDir 'static_inventory_summary.md') -Encoding utf8
Write-Output "DO_HEADS=$(($src | Select-String '^\s*DO\s+').Count) LOOPS=$($loops.Count) CALLS=$($barriers.Count) IPO_LINES=$($section.Count)"
