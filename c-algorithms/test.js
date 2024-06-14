const Module = require("./src/main");

Module.onRuntimeInitialized = function() {
    const nbrs = new Float32Array([1, 2, 3, 4, 5]);
    Module.average_f32_c({
        items: nbrs,
        length: nbrs.length
    });
}