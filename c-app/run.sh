#!/bin/bash


FILES=$(find src -name '*.c')

# LIBS_I=$(find lib -maxdepth 2 -type d -printf "-I%p " | tail -n +2)
# LIBS_L=$(find lib -maxdepth 2 -type d -printf "-L%p " | tail -n +2)
# LIBS_l=$(find lib -maxdepth 2 -type d -printf "-l%p " | tail -n +2)


# gcc \
#   -O2 \
#   -c "$FILES" \
#   "$LIBS_I " \
#   "$LIBS_L " \
#   "$LIBS_l " \
#   -o bin/

gcc -O2 -c "$FILES" -o bin/
