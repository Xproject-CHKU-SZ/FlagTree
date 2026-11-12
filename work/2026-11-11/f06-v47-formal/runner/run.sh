set -euo pipefail
src=/repair/opt47/formal-v2
root=/out
card=$(cat "$root/card")
case "$card" in [0-7]) ;; *) exit 2 ;; esac
test "$SLOW30_CARD" = "$card"
suite="$src"
test "$(cat /out/image.id)" = "$2"
cp "$suite/$1.list" "$root/cases.list"
count=$(awk '{n+=split($3,ds,",")} END {print n}' "$root/cases.list")
date -Is > "$root/started"
case "$1" in
 fp32_39) test "$count" -eq 39; export F06_DTYPE_ORDER=float32 ;;
 all117) test "$count" -eq 117; export F06_DTYPE_ORDER=float32,float16,bfloat16 ;;
 *) exit 2 ;;
esac
export FLAGTREE_DSA_CACHE=/out/tiles
verify() { python "$src/check_group.py" "$1" "$2" "$3" "$4"; }
complete=0
while read -r kind shape dtypes; do
 grp="$root/$kind-$shape"; mkdir -p "$grp"; success=''
 if test -s "$grp/accepted"; then
     previous=$(cat "$grp/accepted")
     if verify "$grp/$previous" "$kind" "$shape" "$dtypes"; then success=$previous; fi
 fi
 if test -z "$success"; then
   for trial in 1 2 3; do
     export TORCHINDUCTOR_CACHE_DIR=/tmp/v42-inductor-$trial TRITON_CACHE_DIR=/tmp/v42-triton-$trial
     if ! test -f "$TORCHINDUCTOR_CACHE_DIR/.seeded"; then
       mkdir -p "$TORCHINDUCTOR_CACHE_DIR/cache"; cp -a /repair/inductor-cache/. "$TORCHINDUCTOR_CACHE_DIR/cache/"
       python /repair/snapshot_config.py /repair/completed-config "$TORCHINDUCTOR_CACHE_DIR"
       touch "$TORCHINDUCTOR_CACHE_DIR/.seeded"
     fi
     dir=$(mktemp -d "$grp/attempt-$trial-XXXXXX")
     chmod 0755 "$dir"
     timeout_s=$((200 + 60*trial))
     rc=0
     F06_RESULTS="$dir" F06_MEASURE_DTYPES="$dtypes" timeout -k 5 "$timeout_s" python -u "$src/bench.py" "$kind" "$shape" formal > "$dir/bench.log" 2>&1 || rc=$?
     if test "$rc" = 0; then verify "$dir" "$kind" "$shape" "$dtypes" > "$dir/verify.log" 2>&1 || rc=$?; fi
     echo "$rc" > "$dir/exit"
     printf '%s\t%s\t%s\t%s\n' "$(date -Is)" "$kind-$shape" "$(basename "$dir")" "$rc" >> "$root/attempts.tsv"
     if test "$rc" = 0; then success=$(basename "$dir"); echo "$success" > "$grp/accepted.tmp"; mv "$grp/accepted.tmp" "$grp/accepted"; break; fi
     echo "retry $kind $shape $dtypes rc=$rc"
   done
 fi
 if test -z "$success"; then echo "group failed: $kind $shape"; exit 1; fi
 n=$(( 1 + $(tr -cd ',' <<< "$dtypes" | wc -c) )); complete=$((complete+n))
 echo "accepted $complete/$count $kind $shape $dtypes"
done < "$root/cases.list"
test "$complete" = "$count"
printf '%s\n' "$complete" > "$root/verified.count"
date -Is > "$root/finished"
