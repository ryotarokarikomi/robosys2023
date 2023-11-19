#!/bin/bash
# SPDX-FileCopyrightText: 2023 Ryotaro Karikomi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
  echo NG at line ${1}
  res=1
}

res=0

out=$(echo 62 174 | ./calculate_BMI)
[ "${out}" = 20.48 ] || ng "${LINENO}"

out=$(echo あ | ./calculate_BMI)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo a | ./calculate_BMI)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

out=$(echo | ./calculate_BMI)
[ "$?" = 1 ] || ng "${LINENO}"
[ "${out}" = "" ] || ng "${LINENO}"

[ "${res}" = 0 ] && echo OK

exit ${res}
