#!/bin/bash

# 입력된 폴더가 존재하지 않으면 생성
if [ ! -d "$1" ]; then
    mkdir "$1"
fi

# 입력된 폴더로 이동
cd "$1" || exit 1

# 기존의 file0.txt, file1.txt, ... 파일들을 대상으로 폴더와 링크 생성
for file in file*.txt; do
    # 파일이 없으면 스크립트를 종료
    if [ ! -f "$file" ]; then
        echo "$file 파일이 없습니다."
        exit 1
    fi

    # 파일 이름에서 확장자를 제거하여 폴더 이름으로 사용
    folder_name="${file%.*}"

    # 폴더 생성 및 파일 링크 생성
    mkdir "$folder_name"
    ln -s "../$file" "$folder_name/$file"
done

# 결과 확인을 위해 폴더와 링크된 파일 구조 출력
ls -R

exit 0

