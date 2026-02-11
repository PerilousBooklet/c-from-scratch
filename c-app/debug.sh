#!/bin/bash

FILES=$(find src -name '*.c')

gcc \
  -Wall --debug -Og \
  -c "$FILES" \
  -o bin/
