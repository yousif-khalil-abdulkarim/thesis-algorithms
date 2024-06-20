WasmPage = 64kib = 65_536 bytes

initial_memory = 20 WasmPages = 1280kib = 1310720 bytes
max_memory = 65536 WasmPages = 4194304kib = 4294967296 bytes

Emscripten version = 3.1.40
C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=1310720 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript version = 0.27.27
Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=20 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

Repetition: 10

f(step) = 2^step * 10_000

Steps: 5
