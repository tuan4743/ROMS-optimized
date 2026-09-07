#!/bin/bash
# Patch distribute.F in-place (tree already extracted).
set -euo pipefail
WORK=/public/home/fujiake/fjk/agent_tmp/isolated/work/s32_bcasthier_20260808
D=$WORK/ROMS_CoSiNE15/ROMS/Utility/distribute.F
HELPER=$WORK/mp_hier_helper.inc
# restore pristine if prior failed mid-way
cp -a "$D.pre_bcasthier" "$D"

perl -e '
  my ($d,$h)=@ARGV;
  open H,"<",$h or die $!; local $/; my $helper=<H>; close H;
  open F,"<",$d or die $!; my $t=<F>; close F;
  $t =~ s/(      CONTAINS\n)/$1$helper/ or die "insert failed";
  my ($head,$rest) = $t =~ /^(.*?END SUBROUTINE mp_barrier\n)(.*)$/s;
  die "split failed" unless defined $rest;
  my ($pre, $zone, $tail);
  if ($rest =~ /^(.*?)(      SUBROUTINE mp_bcastf_0d \(ng, model, A\)\n.*?END SUBROUTINE mp_bcastl_2d\n)(.*)$/s) {
    ($pre,$zone,$tail)=($1,$2,$3);
  } else { die "bcast zone failed"; }
  my $n=0;
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MP_FLOAT, MyMaster, OCN_COMM_WORLD, MyError\)/CALL mp_hier_bcast_real (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MP_FLOAT, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_real (Npts, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MPI_INTEGER, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_int (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MPI_INTEGER, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_int (Npts, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, 1, MPI_LOGICAL, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_log (1, A, MyError)/g);
  $n += ($zone =~ s/CALL mpi_bcast \(A, Npts, MPI_LOGICAL, MyMaster, OCN_COMM_WORLD,\s*&\n\s*&                MyError\)/CALL mp_hier_bcast_log (Npts, A, MyError)/g);
  print STDERR "replacements=$n\n";
  die "too few replacements: $n" if $n < 11;
  if ($zone =~ /CALL mpi_bcast/) {
    print STDERR "leftover:\n";
    while ($zone =~ /^(.*CALL mpi_bcast.*)$/mg) { print STDERR "$1\n"; }
    die "leftover";
  }
  open O,">",$d or die $!; print O $head,$pre,$zone,$tail; close O;
  print STDERR "patch ok lines=", scalar(()=$t =~ /\n/g), "\n";
' "$D" "$HELPER"

md5sum "$D" | tee "$WORK/distribute_after.md5"
echo "hier_real=$(grep -c 'mp_hier_bcast_real' "$D")"
echo "hier_int=$(grep -c 'mp_hier_bcast_int' "$D")"
echo "hier_log=$(grep -c 'mp_hier_bcast_log' "$D")"
echo "==== sample replaced call sites ===="
grep -n 'CALL mp_hier_bcast' "$D" | head -20
echo "==== mp_bcasts still flat (expected) ===="
sed -n '1180,1190p' "$D"
