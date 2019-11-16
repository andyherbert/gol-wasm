import * as wasm from "./wasm/wasm.js";

wasm.fetch("./gol-wasm.wasm").then(async ({exports, canvas}) => {
    document.getElementById("canvas_container").appendChild(canvas);
    await exports.start();
});
