const Module = require("./src/main");

Module.onRuntimeInitialized = function() {
    Module.hello_world();
}