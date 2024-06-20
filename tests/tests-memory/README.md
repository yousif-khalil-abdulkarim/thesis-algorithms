WasmPage = 64kib = 65_536 bytes

Emscripten version = 3.1.40
Assemblyscript version = 0.27.27
max_memory = 65536 WasmPages = 4194304kib = 4294967296 bytes
Repetition: 1
f(step) = 2^step * 10_000
Steps: 5

1.---------------------------------------------------

initial_memory = 2 WasmPages = 128kib = 131072 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=131072 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=2 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

2.---------------------------------------------------

initial_memory = 4 WasmPages = 256kib = 262144 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=262144 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=4 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

3.---------------------------------------------------

initial_memory = 6 WasmPages = 384kib = 393216 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=393216 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=6 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

4.---------------------------------------------------

initial_memory = 8 WasmPages = 512kib = 524288 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=524288 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=8 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

5.---------------------------------------------------

initial_memory = 10 WasmPages = 640kib = 655360 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=655360 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=10 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

6.---------------------------------------------------

initial_memory = 12 WasmPages = 768kib = 786432 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=786432 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=12 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

7.---------------------------------------------------

initial_memory = 14 WasmPages = 896kib = 917504 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=917504 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=14 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

8.---------------------------------------------------

initial_memory = 16 WasmPages = 1024kib = 1048576 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=1048576 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=16 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

9.---------------------------------------------------

initial_memory = 18 WasmPages = 1152kib = 1179648 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=1179648 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=18 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release

10.---------------------------------------------------

initial_memory = 20 WasmPages = 1280kib = 1310720 bytes

C build command:
emcc src/main.c -O3 -s MODULARIZE -s EXPORT_ES6=1 -s ALLOW_MEMORY_GROWTH=1 -s INITIAL_MEMORY=1310720 -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o .release.js

Assemblyscript build command:
npx asc src/algorithms/index.ts --initialMemory=20 --maximumMemory=65536 --shrinkLevel 3 --optimizeLevel 3 --target release
