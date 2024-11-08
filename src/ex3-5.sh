#!/bin/bash
echo "프로그램을 시작합니다."

function execute_command() {
  echo "함수 안으로 들어왔음"
  
  ls "$@"
}


execute_command "$@"

echo "프로그램을 종료합니다."

