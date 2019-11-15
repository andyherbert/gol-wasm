import {instantiate} from "./asyncify.mjs";

export async function fetch(url) {
    const canvas = document.createElement("canvas");
    const env = {
        rand: (n) => Math.floor(Math.random() * n),
        next_frame: async () => {
            return new Promise(resolve => {
                image_data.data.set(screen_data);
                context.putImageData(image_data, 0, 0);
                requestAnimationFrame(resolve);
            });
        }
    };
    const {instance} = await instantiate(await window.fetch(url).then(resp => resp.arrayBuffer()), {env});
    const canvas_data = new Uint32Array(instance.exports.memory.buffer, instance.exports.canvas, 3);
    canvas.width = canvas_data[0];
    canvas.height = canvas_data[1];
    const screen_data = new Uint8Array(instance.exports.memory.buffer, canvas_data[2], canvas.width * canvas.height * 4);
    const context = canvas.getContext("2d");
    const image_data = context.getImageData(0, 0, canvas.width, canvas.height);
    const mouse_data = new Uint32Array(instance.exports.memory.buffer, instance.exports.mouse, 3);
    canvas.addEventListener("mousedown", event => mouse_data[2] = event.button + 1);
    canvas.addEventListener("mouseup", () => mouse_data[2] = 0);
    canvas.addEventListener("mousemove", event => {
        const rect = canvas.getBoundingClientRect();
        mouse_data[0] = Math.floor((event.clientX - rect.left) / (rect.width / canvas.width));
        mouse_data[1] = Math.floor((event.clientY - rect.top) / (rect.height / canvas.height));
    });
    canvas.addEventListener("contextmenu", event => event.preventDefault());
    return {exports: instance.exports, canvas};
}
