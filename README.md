Versions:
Emscripten version 3.1.40
Assemblyscript version 0.27.27
Node Js version 18.18.0

Wasm information:
Wasm max memory 4294967296b
Wasm page size = 64000b
Wasm min memory = 64000b

Array sizes:
x min value -> 1
x step -> 0.5 
x max value -> 9

f(x) = 2^x * 10_000
x = 1 -> f(x) = 20000
x = 1.5 -> f(x) = 28284
x = 2 -> f(x) = 40000
x = 2.5 -> f(x) = 56568
x = 3 -> f(x) = 80000
x = 3.5 -> f(x) = 113137
x = 4 -> f(x) = 160000
x = 4.5 -> f(x) = 226274
x = 5 -> f(x) = 320000
x = 5.5 -> f(x) = 452548
x = 6 -> f(x) = 640000
x = 6.5 -> f(x) = 905096
x = 7 -> f(x) = 1280000
x = 7.5 -> f(x) = 1810193
x = 8 -> f(x) = 2560000
x = 8.5 -> f(x) = 3620386
x = 9 -> f(x) = 5120000

64 bit array size in bytes:
Array size 20000 = 192000b
Array size 28284 = 256000b
Array size 40000 = 320000b
Array size 56568 = 512000b
Array size 80000 = 640000b
Array size 113137 = 960000b
Array size 160000 = 1280000b
Array size 226274 = 1856000b
Array size 320000 = 2560000b
Array size 452548 = 3648000b
Array size 640000 = 5120000b
Array size 905096 = 7296000b
Array size 1280000 = 10240000b
Array size 1810193 = 14528000b
Array size 2560000 = 20480000b
Array size 3620386 = 28992000b
Array size 5120000 = 40960000b

32 bit array size in bytes:
Array size 20000 = 128000b
Array size 28284 = 128000b
Array size 40000 = 192000b
Array size 56568 = 256000b
Array size 80000 = 320000b
Array size 113137 = 512000b
Array size 160000 = 640000b
Array size 226274 = 960000b
Array size 320000 = 1280000b
Array size 452548 = 1856000b
Array size 640000 = 2560000b
Array size 905096 = 3648000b
Array size 1280000 = 5120000b
Array size 1810193 = 7296000b
Array size 2560000 = 10240000b
Array size 3620386 = 14528000b
Array size 5120000 = 20480000b

16 bit array size in bytes:
Array size 20000 = 64000b
Array size 28284 = 64000b
Array size 40000 = 128000b
Array size 56568 = 128000
Array size 80000 = 192000b
Array size 113137 = 256000b
Array size 160000 = 320000b
Array size 226274 = 512000b
Array size 320000 = 640000b
Array size 452548 = 960000b
Array size 640000 = 1280000b
Array size 905096 = 1856000b
Array size 1280000 = 2560000b
Array size 1810193 = 3648000b
Array size 2560000 = 5120000b
Array size 3620386 = 7296000b
Array size 5120000 = 10240000b

8 bit array size in bytes:
Array size 20000 = 64000b
Array size 28284 = 64000b
Array size 40000 = 64000b
Array size 56568 = 64000b
Array size 80000 = 128000b
Array size 113137 = 128000b
Array size 160000 = 256000b
Array size 226274 = 256000b
Array size 320000 = 320000b
Array size 452548 = 512000b
Array size 640000 = 640000b
Array size 905096 = 960000b
Array size 1280000 = 1280000b
Array size 1810193 = 1856000b
Array size 2560000 = 2560000b
Array size 3620386 = 3648000b
Array size 5120000 = 5120000b

Settings:
Emscripten compiler settings
emcc main.cpp -s ALLOW_MEMORY_GROWTH=1 -s MEMORY_GROWTH_LINEAR_STEP=1mb -s INITIAL_MEMORY=64kb -s MAXIMUM_MEMORY=4294967296 -lembind -o main.js 