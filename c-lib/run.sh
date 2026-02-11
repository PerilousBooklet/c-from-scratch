#!/bin/bash

if [[ ! -d bin ]]; then mkdir -p bin; fi

gcc -O2 -c "$FILES" -o bin/
