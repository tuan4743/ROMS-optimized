param(
  [Parameter(Mandatory=$true)][string]$InputDir,
  [Parameter(Mandatory=$true)][string]$OutputDir
)

$ErrorActionPreference = 'Stop'
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

function Split-FortranArgs([string]$text) {
  $args = New-Object System.Collections.Generic.List[string]
  $depth = 0
  $start = 0
  for ($i=0; $i -lt $text.Length; $i++) {
    $c = $text[$i]
    if ($c -eq '(') { $depth++ }
    elseif ($c -eq ')') { $depth-- }
    elseif (($c -eq ',') -and ($depth -eq 0)) {
      $args.Add($text.Substring($start, $i-$start).Trim())
      $start = $i + 1
    }
  }
  if ($start -lt $text.Length) { $args.Add($text.Substring($start).Trim()) }
  return ,$args.ToArray()
}

$statements = New-Object System.Collections.Generic.List[object]
foreach ($file in Get-ChildItem -LiteralPath $InputDir -Filter '*.f90' -File | Sort-Object Name) {
  $lines = Get-Content -LiteralPath $file.FullName -Encoding utf8
  $current = ''
  $startLine = 0
  $subroutine = ''
  for ($idx=0; $idx -lt $lines.Count; $idx++) {
    $line = $lines[$idx]
    $trim = $line.Trim()
    if (($trim -eq '') -or $trim.StartsWith('!')) { continue }
    if ($current -eq '') { $startLine = $idx + 1 }
    $piece = $trim
    if ($piece.StartsWith('&')) { $piece = $piece.Substring(1).TrimStart() }
    $continues = $piece.EndsWith('&')
    if ($continues) { $piece = $piece.Substring(0,$piece.Length-1).TrimEnd() }
    if ($current -eq '') { $current = $piece } else { $current += ' ' + $piece }
    if ($continues) { continue }

    $norm = ($current -replace '\s+',' ').Trim()
    if ($norm -match '^(?i)(?:recursive\s+|pure\s+|elemental\s+)?subroutine\s+([a-z0-9_]+)') {
      $subroutine = $Matches[1]
    }
    $statements.Add([pscustomobject]@{
      File=$file.Name; Line=$startLine; Subroutine=$subroutine; Text=$norm
    })
    if ($norm -match '^(?i)end\s+subroutine') { $subroutine = '' }
    $current = ''
  }
}

$calls = New-Object System.Collections.Generic.List[object]
for ($i=0; $i -lt $statements.Count; $i++) {
  $s = $statements[$i]
  if ($s.Text -notmatch '(?i)^call\s+(mp_exchange(?:2d|3d|4d))\s*\((.*)\)\s*$') { continue }
  $routine = $Matches[1].ToLowerInvariant()
  $args = Split-FortranArgs $Matches[2]
  $nvar = if ($args.Count -ge 4) { $args[3] } else { '' }
  $fixedCount = switch ($routine) {
    'mp_exchange2d' { 11 }
    'mp_exchange3d' { 13 }
    'mp_exchange4d' { 15 }
    default { $args.Count }
  }
  $fields = if ($args.Count -gt $fixedCount) {
    ($args[$fixedCount..($args.Count-1)] -join ' | ')
  } else { '' }
  $fieldCount = [Math]::Max(0, $args.Count - $fixedCount)
  $calls.Add([pscustomobject]@{
    Index=$i; File=$s.File; Line=$s.Line; Subroutine=$s.Subroutine;
    Routine=$routine; Nvar=$nvar; FieldCount=$fieldCount; FieldArgs=$fields; ArgCount=$args.Count;
    Statement=$s.Text
  })
}

$calls | Select-Object File,Line,Subroutine,Routine,Nvar,FieldCount,FieldArgs,ArgCount,Statement |
  Export-Csv -LiteralPath (Join-Path $OutputDir 'mp_exchange_calls.csv') -NoTypeInformation -Encoding utf8

$adj = New-Object System.Collections.Generic.List[object]
for ($ci=0; $ci -lt $calls.Count-1; $ci++) {
  $a=$calls[$ci]; $b=$calls[$ci+1]
  if (($a.File -ne $b.File) -or ($a.Subroutine -ne $b.Subroutine)) { continue }
  $between = @()
  if ($b.Index -gt $a.Index+1) {
    $between = $statements[($a.Index+1)..($b.Index-1)] | ForEach-Object {$_.Text}
  }
  $preview = ($between | Select-Object -First 6) -join ' || '
  $hasCall = [bool]($between | Where-Object {$_ -match '(?i)^call\s+'})
  $hasAssign = [bool]($between | Where-Object {($_ -match '=') -and ($_ -notmatch '^(?i)(if|elseif)\b')})
  $adj.Add([pscustomobject]@{
    File=$a.File; Subroutine=$a.Subroutine; FromLine=$a.Line; ToLine=$b.Line;
    FromRoutine=$a.Routine; ToRoutine=$b.Routine; FromNvar=$a.Nvar; ToNvar=$b.Nvar;
    InterveningStatements=$between.Count; HasCall=$hasCall; HasAssignment=$hasAssign;
    Preview=$preview
  })
}
$adj | Export-Csv -LiteralPath (Join-Path $OutputDir 'mp_exchange_adjacency.csv') -NoTypeInformation -Encoding utf8

$summary = New-Object System.Collections.Generic.List[string]
$summary.Add('# Exact S32 active mp_exchange inventory')
$summary.Add('')
$summary.Add("- Preprocessed files: $((Get-ChildItem -LiteralPath $InputDir -Filter '*.f90' -File).Count)")
$summary.Add("- Active call statements: $($calls.Count)")
$summary.Add('')
$summary.Add('## Counts by routine')
$summary.Add('')
$summary.Add('| Routine | Calls |')
$summary.Add('|---|---:|')
foreach($g in $calls | Group-Object Routine | Sort-Object Name){$summary.Add("| $($g.Name) | $($g.Count) |")}
$summary.Add('')
$summary.Add('## Immediately adjacent candidates')
$summary.Add('')
$summary.Add('These have zero intervening logical statements. They are candidates for semantic review, not automatically mergeable.')
$summary.Add('')
$summary.Add('| File | Subroutine | Lines | Calls | Nvar |')
$summary.Add('|---|---|---:|---|---|')
foreach($x in $adj | Where-Object {$_.InterveningStatements -eq 0}){
  $summary.Add("| $($x.File) | $($x.Subroutine) | $($x.FromLine)-$($x.ToLine) | $($x.FromRoutine) -> $($x.ToRoutine) | $($x.FromNvar) -> $($x.ToNvar) |")
}
$summary | Set-Content -LiteralPath (Join-Path $OutputDir 'mp_exchange_summary.md') -Encoding utf8

Write-Output "FILES=$((Get-ChildItem -LiteralPath $InputDir -Filter '*.f90' -File).Count)"
Write-Output "CALLS=$($calls.Count)"
Write-Output "ADJACENT_ZERO=$(($adj | Where-Object {$_.InterveningStatements -eq 0}).Count)"
