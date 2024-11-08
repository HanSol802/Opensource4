#!/bin/bash

height=$1
weight=$2

height=$(echo "$height / 100" | bc -l)

bmi=$(echo "$weight / ($height * $height)" | bc -l)

if (( $(echo "$bmi < 18.5" | bc -l) )); then
  echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5" | bc -l) && $(echo "$bmi < 23" | bc -l) )); then
  echo "정상 체중입니다."
else
  echo "과체중입니다."
fi

