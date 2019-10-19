# WebAssembly implementation of Conway's Game of Life

Requirements:
 - The LLVM compiler (llvm) >= v8
 - BinaryEn (binaryen) for wasm-opt
 - WebAssembly Binary Toolkit (wabt) for wasm2wat

 On macOS these developer dependencies can be installed with the [Brew package manager](https://brew.sh), and entering `brew install llvm binaryen wabt` in the Terminal application. Just make sure you also `export PATH`, `LDFLAGS`, and `CPPFLAGS` in your rc file.

binaryen and wabt are optional, but wasm-opt will significantly optimise the compiled binary for size, and wasm2wat will provide a useful textual representation of the compiled binary.

    make
    open index.html
