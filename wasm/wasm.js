import {instantiate} from "./asyncify.mjs";

export async function fetch(url) {
    const canvas = document.createElement("canvas");
    const context = canvas.getContext("2d");
    const {instance} = await instantiate(await window.fetch(url).then(resp => resp.arrayBuffer()), {
        env: {
            rand: (n) => Math.floor(Math.random() * n),
            next_frame: async () => {
                return new Promise(resolve => {
                    context.clearRect(0, 0, canvas.width, canvas.height);
                    imageData.data.set(screen_data);
                    context.putImageData(imageData, 0, 0);
                    requestAnimationFrame(resolve);
                });
            },
        }
    });
    const mouse_data = new Uint32Array(instance.exports.memory.buffer, instance.exports.mouse, 3);
    canvas.addEventListener("mousedown", event => mouse_data[2] = event.button + 1);
    canvas.addEventListener("mouseup", () => mouse_data[2] = 0);
    canvas.addEventListener("mousemove", event => {
        const rect = canvas.getBoundingClientRect();
        mouse_data[0] = Math.floor((event.clientX - rect.left) / (rect.width / canvas.width));
        mouse_data[1] = Math.floor((event.clientY - rect.top) / (rect.height / canvas.height));
    });
    const canvas_data = new Uint32Array(instance.exports.memory.buffer, instance.exports.canvas, 3);
    canvas.width = canvas_data[0];
    canvas.height = canvas_data[1];
    const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
    const screen_data = new Uint8Array(instance.exports.memory.buffer, canvas_data[2], canvas.width * canvas.height * 4);
    canvas.addEventListener("contextmenu", event => event.preventDefault());
    return {start: instance.exports.start, canvas};
}
