#!/bin/bash
set -u
R=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_profile_diag_20260808/ROMS_CoSiNE15
cd "$R" || exit 1

echo "==== CALL mp_exchange counts by file ===="
for f in ROMS/Nonlinear/*.F ROMS/Nonlinear/*.h ROMS/Utility/nesting.F; do
  [ -f "$f" ] || continue
  n=$(grep -c 'CALL mp_exchange' "$f" 2>/dev/null || echo 0)
  if [ "$n" != "0" ]; then printf '%5s %s\n' "$n" "$f"; fi
done | sort -nr | head -25

echo
echo "==== Nfields extraction via perl ===="
perl -e '
use strict; use warnings;
my @files = qw(
  ROMS/Nonlinear/step2d_LF_AM3.h
  ROMS/Nonlinear/pre_step3d.F
  ROMS/Nonlinear/step3d_t.F
  ROMS/Nonlinear/gls_corstep.F
  ROMS/Nonlinear/step3d_uv.F
  ROMS/Nonlinear/omega.F
  ROMS/Nonlinear/rhs3d.F
  ROMS/Utility/nesting.F
);
my %hist; my %byfile; my @ex;
for my $rel (@files) {
  open my $fh, "<", $rel or do { warn "MISSING $rel\n"; next };
  local $/; my $text = <$fh>; close $fh;
  while ($text =~ /CALL\s+mp_exchange([234])d\s*\((.*?)\)/sgi) {
    my ($dim, $args) = ($1, $2);
    $args =~ s/&\s*\n\s*/ /g;
    $args =~ s/\s+/ /g;
    my @parts = map { s/^\s+|\s+$//gr } split /,/, $args;
    my $nfields = undef;
    if (@parts >= 4 && $parts[3] =~ /^\d+$/) { $nfields = 0+$parts[3]; }
    my $key = defined $nfields ? "$dim:$nfields" : "$dim:?";
    $hist{$key}++;
    $byfile{$rel}{$key}++;
    if (defined $nfields && $nfields <= 2 && @ex < 20) {
      push @ex, [$rel, $dim, $nfields, join(",", @parts[0..5])];
    }
  }
}
print "HIST (dim:Nfields) -> count:\n";
for my $k (sort { $hist{$b} <=> $hist{$a} || $a cmp $b } keys %hist) {
  print "  $k: $hist{$k}\n";
}
print "BY FILE:\n";
for my $rel (sort keys %byfile) {
  my $h = $byfile{$rel};
  print "  $rel";
  print " $_=$h->{$_}" for sort keys %$h;
  print "\n";
}
print "EXAMPLES Nfields<=2:\n";
for (@ex) { print "  $_->[0] dim=$_->[1] N=$_->[2] args=$_->[3]\n"; }
my ($le3,$eq4,$unk)=(0,0,0);
for my $k (keys %hist) {
  my ($d,$n) = split /:/, $k;
  if ($n eq "?") { $unk += $hist{$k}; }
  elsif ($n == 4) { $eq4 += $hist{$k}; }
  elsif ($n <= 3) { $le3 += $hist{$k}; }
}
print "Nfields<=3: $le3; ==4: $eq4; unknown: $unk\n";
'

echo
echo "==== step2d adjacent exchange clusters (line numbers) ===="
grep -n 'CALL mp_exchange\|CALL exchange_' ROMS/Nonlinear/step2d_LF_AM3.h | head -80

echo
echo "==== Intel MPI versions present ===="
ls /public/software/mpi/intelmpi/
ls /public/home/fujiake/nan/sprint/scripts/ | head -40
