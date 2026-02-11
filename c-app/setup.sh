#!/bin/bash


LIBS=(
  "https://github.com/rxi/microui"
  "https://github.com/rxi/microtar"
  "https://github.com/rxi/log.c"
  "https://github.com/rxi/ini"
)


echo -e "\e[32m[INFO]\e[0m Creating folders..."
mkdir -vp src lib bin obj


echo -e "\e[32m[INFO]\e[0m Writing main file..."
touch src/main.c
cat << EOT > src/main.c
#include <stdio.h>

int main() {
  
  printf("Hello World!\n");
  return 0;
  
}
EOT


echo -e "\e[32m[INFO]\e[0m Creating main header file..."
touch src/main.h


for i in "${LIBS[@]}"; do
	LIB_NAME=$(echo "$i" | sed 's|https://github.com/||g')
	echo -e "\e[32m[INFO]\e[0m Downloading $LIB_NAME..."
  git clone "$i" lib/"$LIB_NAME"
done
