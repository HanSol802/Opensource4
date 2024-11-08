#!/bin/bash

echo "첫 번째 숫자를 입력하세요:"
read num1

echo "연산자를 입력하세요 (+ 또는 -):"
read operator

echo "두 번째 숫자를 입력하세요:"
read num2

result=$(echo "$num1 $operator $num2" | bc)
echo "결과: $result"

