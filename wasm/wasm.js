export async function fetch(url) {
    const canvas = document.createElement("canvas");
    canvas.width = 1280;
    canvas.height = 520;
    const context = canvas.getContext("2d");
    const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
    const resp = await window.fetch(url);
    const bytes = await resp.arrayBuffer();
    const memory = new WebAssembly.Memory({initial: 256, maximum: 256});
    const table = new WebAssembly.Table({initial: 256, element: "anyfunc"});
    const wasm = await WebAssembly.instantiate(bytes, {
        env: {
            memory,
            __indirect_function_table: table,
            rand: (n) => Math.floor(Math.random() * n),
            update: (bufferPointer, funcPointer) => {
                context.clearRect(0, 0, canvas.width, canvas.height);
                imageData.data.set(new Uint8ClampedArray(memory.buffer, bufferPointer, canvas.width * canvas.height * 4));
                context.putImageData(imageData, 0, 0);
                requestAnimationFrame(table.get(funcPointer));
            },
        }
    });
    canvas.addEventListener("mouseenter", (event) => {
        if (wasm.instance.exports.mouse_enter)
            wasm.instance.exports.mouse_enter();
    });
    canvas.addEventListener("mousedown", (event) => {
        if (wasm.instance.exports.mouse_down)
            wasm.instance.exports.mouse_down(event.button);
    });
    canvas.addEventListener("contextmenu", (event) => {
        event.preventDefault();
    });
    canvas.addEventListener("mouseup", (event) => {
        if (wasm.instance.exports.mouse_up)
            wasm.instance.exports.mouse_up();
    });
    canvas.addEventListener("mouseleave", (event) => {
        if (wasm.instance.exports.mouse_leave)
            wasm.instance.exports.mouse_leave();
    });
    canvas.addEventListener("mousemove", (event) => {
        const rect = canvas.getBoundingClientRect();
        if (wasm.instance.exports.mouse_move)
            wasm.instance.exports.mouse_move(Math.floor((event.clientX - rect.left) / (rect.width / canvas.width)), Math.floor((event.clientY - rect.top) / (rect.height / canvas.height)));
    });
    return {main: wasm.instance.exports.main, canvas};
}
