#include "stdio.h"
#include <emscripten/bind.h>
using namespace emscripten;

int main() {
    printf("moudle init wasm");
}

void hello_world() {
    printf("Hello world\n");
}
EMSCRIPTEN_BINDINGS(my_module) {
    function("hello_world", &hello_world);
}
