Not as an executable, but as a **library file**. There are two main types:

## **1. Static Library (`.a` file on Linux, `.lib` on Windows)**

Created once, linked into your executable at compile time:

**Create the library:**
```bash
# Compile library source to object files
gcc -c lib/mylib/*.c
ar rcs libmylib.a *.o
rm *.o
```

**Use the library:**
```bash
# Link against the static library
gcc -O2 src/*.c -L. -lmylib -o bin/main
```
- `-L.`: Look for libraries in current directory
- `-lmylib`: Link against `libmylib.a`

## **2. Shared/Dynamic Library (`.so` on Linux, `.dll` on Windows, `.dylib` on macOS)**

Loaded at runtime, can be shared between programs:

**Create the library:**
```bash
# Compile with position-independent code
gcc -fPIC -c lib/mylib/*.c
gcc -shared -o libmylib.so *.o
rm *.o
```

**Use the library:**
```bash
# Link against shared library
gcc -O2 src/*.c -L. -lmylib -o bin/main

# Run (you may need to set library path)
LD_LIBRARY_PATH=. ./bin/main
```

**Key differences:**
- **Static (`.a`)**: Library code copied into your executable (larger file, no runtime dependencies)
- **Shared (`.so`)**: Library loaded at runtime (smaller executable, library must be present when running)

Most C libraries you download are distributed as one of these formats, not as executables.
