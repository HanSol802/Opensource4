#!/bin/bash

count=$1

if [ -z "$count" ]; then
  count=10
fi

for ((i = 0; i < count; i++)); do
  echo "hello world"
done

