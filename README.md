Versions:
Emscripten version 3.1.40
Assemblyscript version 0.27.27
Node Js version 18.18.0

Wasm information:
Wasm max memory 65536KiB
Wasm page size = 64KiB 
Wasm min memory = 64KiB 

Array sizes:
x min value -> 1
x step -> 0.5 
x max value -> 8

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

64 bit array size in bytes:
Array size 20000, 3KiB
Array size 28284, 4KiB
Array size 40000, 5KiB
Array size 56568, 7KiB
Array size 80000, 10KiB
Array size 113137, 14KiB
Array size 160000, 20KiB
Array size 226274, 28KiB
Array size 320000, 40KiB
Array size 452548, 56KiB
Array size 640000, 79KiB
Array size 905096, 111KiB
Array size 1280000, 157KiB
Array size 1810193, 221KiB
Array size 2560000, 313KiB
Array size 3620386, 442KiB
Array size 5120000, 625KiB

32 bit array size in bytes:
Array size 20000, 2KiB
Array size 28284, 2KiB
Array size 40000, 3KiB
Array size 56568, 4KiB
Array size 80000, 5KiB
Array size 113137, 7KiB
Array size 160000, 10KiB
Array size 226274, 14KiB
Array size 320000, 20KiB
Array size 452548, 28KiB
Array size 640000, 40KiB
Array size 905096, 56KiB
Array size 1280000, 79KiB
Array size 1810193, 111KiB
Array size 2560000, 157KiB
Array size 3620386, 221KiB
Array size 5120000, 313KiB

16 bit array size in bytes:
Array size 20000, 1KiB
Array size 28284, 1KiB
Array size 40000, 2KiB
Array size 56568, 2KiB
Array size 80000, 3KiB
Array size 113137, 4KiB
Array size 160000, 5KiB
Array size 226274, 7KiB
Array size 320000, 10KiB
Array size 452548, 14KiB
Array size 640000, 20KiB
Array size 905096, 28KiB
Array size 1280000, 40KiB
Array size 1810193, 56KiB
Array size 2560000, 79KiB
Array size 3620386, 111KiB
Array size 5120000, 157KiB

8 bit array size in bytes:
Array size 20000, 1KiB
Array size 28284, 1KiB
Array size 40000, 1KiB
Array size 56568, 1KiB
Array size 80000, 2KiB
Array size 113137, 2KiB
Array size 160000, 3KiB
Array size 226274, 4KiB
Array size 320000, 5KiB
Array size 452548, 7KiB
Array size 640000, 10KiB
Array size 905096, 14KiB
Array size 1280000, 20KiB
Array size 1810193, 28KiB
Array size 2560000, 40KiB
Array size 3620386, 56KiB
Array size 5120000, 79KiB

Settings:
Emscripten compiler settings
emcc main.c -s ALLOW_MEMORY_GROWTH=1 -s MEMORY_GROWTH_LINEAR_STEP=$step -s INITIAL_MEMORY=$size -s MAXIMUM_MEMORY=4294967296 -s EXPORTED_RUNTIME_METHODS=cwrap -s EXPORTED_FUNCTIONS='[_main, _malloc, _free]' -o main.js 