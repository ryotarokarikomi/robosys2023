#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryotaro Karikomi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
  echo NG at line ${1}
  res=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "${LINENO}"
echo ${out}

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "${res}" = 0 ] && echo OK

exit ${res}
