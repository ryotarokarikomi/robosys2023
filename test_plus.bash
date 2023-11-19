#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryotaro Karikomi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
  echo NG at line ${1}
  res=1
}

res=0

out=($(seq 5 | ./plus))
echo "out=(seq 5 | ./plus)"
echo "out=(${out[0]} ${out[1]})"
[ "${out[0]}" = 15 ] || ng "${LINENO}"
[ "${out[1]}" = 120 ] || ng "${LINENO}"

out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo a | ./plus)
[ "$?" = 1 ]      || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "${res}" = 0 ] && echo OK

exit ${res}
