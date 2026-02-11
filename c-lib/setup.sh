#!/bin/bash


echo -e "\e[32m[INFO]\e[0m Creating folders..."
mkdir -vp src bin lib


echo -e "\e[32m[INFO]\e[0m Writing main file..."
touch src/main.c
cat << EOT > src/main.c
#include <stdio.h>

int main() {
  
  printf("Hello World!\n");
  return 0;
  
}
EOT
s

echo -e "\e[32m[INFO]\e[0m Creating main header file..."
touch src/main.h

# TODO: create .desktop file for Linux

echo -e "\e[32m[INFO]\e[0m Downloading microui..."
git clone "https://github.com/rxi/microui.git" lib/microui
# TODO: clone it as git submodule (?)
