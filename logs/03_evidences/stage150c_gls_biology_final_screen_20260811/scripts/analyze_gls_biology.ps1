param(
  [Parameter(Mandatory=$true)][string]$GlsSource,
  [Parameter(Mandatory=$true)][string]$BiologySource,
  [Parameter(Mandatory=$true)][string]$IpoReport,
  [Parameter(Mandatory=$true)][string]$OutputDir
)
$ErrorActionPreference='Stop'
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
$report=Get-Content -LiteralPath $IpoReport -Encoding utf8

function Extract-Section([string]$Pattern,[string]$OutName){
  $start=-1;$end=-1
  for($i=0;$i -lt $report.Count;$i++){if($report[$i] -match $Pattern){$start=$i;break}}
  if($start -lt 0){throw "section not found: $Pattern"}
  for($i=$start+1;$i -lt $report.Count;$i++){if($report[$i] -match '^Begin optimization report for:'){$end=$i-1;break}}
  if($end -lt 0){$end=$report.Count-1}
  $section=$report[$start..$end]
  $section | Set-Content -LiteralPath (Join-Path $OutputDir $OutName) -Encoding utf8
  return ,$section
}

function Source-Inventory([string]$Path,[string]$Name){
  $lines=Get-Content -LiteralPath $Path -Encoding utf8
  $loopRows=@()
  for($i=0;$i -lt $lines.Count;$i++){
    if($lines[$i] -match '^\s*DO\s+([A-Za-z][A-Za-z0-9_]*)\s*=\s*(.+)$'){
      $loopRows += [pscustomobject]@{File=$Name;Line=$i+1;Index=$Matches[1];Domain=$Matches[2].Trim()}
    }
  }
  return [pscustomobject]@{
    Lines=$lines.Count; DoHeads=$loopRows.Count; Calls=@($lines|Select-String '^\s*CALL\s+').Count;
    Exp=@($lines|Select-String '\bEXP\s*\(').Count; Pow=@($lines|Select-String '\*\*').Count;
    Rows=$loopRows
  }
}

$gls=Source-Inventory $GlsSource 'gls_corstep.f90'
$bio=Source-Inventory $BiologySource 'biology.f90'
$allRows=@($gls.Rows) + @($bio.Rows)
$allRows | Export-Csv -LiteralPath (Join-Path $OutputDir 'loop_heads.csv') -NoTypeInformation -Encoding utf8

$glsRep=Extract-Section '^Begin optimization report for: GLS_CORSTEP_MOD::GLS_CORSTEP_TILE' 'gls_ipo_section.txt'
$bioRep=Extract-Section '^Begin optimization report for: BIOLOGY_MOD::BIOLOGY_TILE' 'biology_ipo_section.txt'

$rows=@(
  [pscustomobject]@{Kernel='gls_corstep';SourceLines=$gls.Lines;DoHeads=$gls.DoHeads;Calls=$gls.Calls;ExpSites=$gls.Exp;PowSites=$gls.Pow;IpoLines=$glsRep.Count;Vectorized=@($glsRep|Select-String 'LOOP WAS VECTORIZED').Count;NotVectorized=@($glsRep|Select-String 'LOOP WAS NOT VECTORIZED').Count;Multiversion=@($glsRep|Select-String 'Loop multiversioned for stride tests').Count;ScalarReplacement=@($glsRep|Select-String 'Array Refs Scalar Replaced').Count},
  [pscustomobject]@{Kernel='biology';SourceLines=$bio.Lines;DoHeads=$bio.DoHeads;Calls=$bio.Calls;ExpSites=$bio.Exp;PowSites=$bio.Pow;IpoLines=$bioRep.Count;Vectorized=@($bioRep|Select-String 'LOOP WAS VECTORIZED').Count;NotVectorized=@($bioRep|Select-String 'LOOP WAS NOT VECTORIZED').Count;Multiversion=@($bioRep|Select-String 'Loop multiversioned for stride tests').Count;ScalarReplacement=@($bioRep|Select-String 'Array Refs Scalar Replaced').Count}
)
$rows | Export-Csv -LiteralPath (Join-Path $OutputDir 'kernel_inventory.csv') -NoTypeInformation -Encoding utf8
$rows | Format-Table -AutoSize | Out-String | Set-Content -LiteralPath (Join-Path $OutputDir 'kernel_inventory.txt') -Encoding utf8
$rows | ConvertTo-Json -Depth 3
