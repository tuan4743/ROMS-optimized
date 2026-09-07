#!/bin/bash
# Read-only: side-by-side region table, O33 baseline vs ifort2021 champion.
# Emits TSV: grid  block  region  o33_cpu  champ_cpu  delta_cpu  pct_change  champ_share_of_total
M=/public/home/fujiake/fjk/mcc_runs
BASE=$M/118405320_o33_full_reproduce_64x2/logs/model.log
CHAMP=$M/118714595_o33_hpcx211_full_64x2/logs/model.log

parse() {
  awk '
    /Nonlinear model elapsed time profile, Grid:/ { grid=$NF; block="compute"; next }
    /Nonlinear model message Passage profile, Grid:/ { grid=$NF; block="message"; next }
    /All percentages are with respect/ { next }
    /^ *Total:/ { next }
    {
      # region rows look like:  "  Name ......  1234.567  ( 1.2345 %)"
      if (match($0, /\.\.\.+/) && match($0, /\(/)) {
        line=$0
        name=line
        sub(/ *\.\.\..*$/, "", name)
        gsub(/^ +| +$/, "", name)
        # value = first token after the run of dots (percent may be glued: "(10.43 %)")
        rest=line
        sub(/^.*\.\.\.+/, "", rest)
        gsub(/^ +/, "", rest)
        split(rest, g, " ")
        val=g[1]
        if (name != "" && val ~ /^[0-9]+\.?[0-9]*$/) printf "%s\t%s\t%s\t%s\n", grid, block, name, val
      }
    }
  ' "$1"
}

parse "$BASE"  > /tmp/_o33.tsv
parse "$CHAMP" > /tmp/_champ.tsv

echo -e "grid\tblock\tregion\to33_cpu\tchamp_cpu\tdelta\tpct\tchamp_share"
awk -F'\t' '
  NR==FNR { k=$1"\t"$2"\t"$3; a[k]=$4; next }
  {
    k=$1"\t"$2"\t"$3
    o=(k in a)? a[k] : "NA"
    c=$4
    if (o=="NA") { printf "%s\t%s\t%s\tNA\t%s\tNA\tNA\tNA\n", $1,$2,$3,c; next }
    d=c-o
    p=(o!=0)? (d/o*100) : 0
    printf "%s\t%s\t%s\t%.3f\t%.3f\t%+.3f\t%+.2f%%\t%.4f%%\n", $1,$2,$3,o,c,d,p,(c/170719.759*100)
  }
' /tmp/_o33.tsv /tmp/_champ.tsv

echo
echo "### totals"
awk -F'\t' '{s+=$4} END {printf "o33 sum of regions   = %.3f\n", s}' /tmp/_o33.tsv
awk -F'\t' '{s+=$4} END {printf "champ sum of regions = %.3f\n", s}' /tmp/_champ.tsv
rm -f /tmp/_o33.tsv /tmp/_champ.tsv
