#include "wasm.h"

typedef enum cell {empty, dead, alive, new} cell;

RGBA const clear = {0, 0, 0, 0};
RGBA const light_blue = {190, 190, 255, 255};
RGBA const blue = {80, 80, 200, 255};
RGBA const dark_blue = {0, 0, 70, 255};

cell world_1[CANVAS_WIDTH * CANVAS_HEIGHT];
cell world_2[CANVAS_WIDTH * CANVAS_HEIGHT];
cell *world_pointer = world_1;

void restart() {
    for (uint32_t i = 0; i < CANVAS_WIDTH * CANVAS_HEIGHT; i++)
        world_pointer[i] = rand(2) ? new : empty;
}

void tic(const cell *from, cell *to) {
    for (int y = 0, i = 0; y < CANVAS_HEIGHT; y++) {
        for (int x = 0; x < CANVAS_WIDTH; x++, i++) {
            uint8_t neighbours = 0;
            if (x > 0 && from[i - 1] > 1) // Left
                neighbours += 1;
            if (x < CANVAS_WIDTH - 1 && from[i + 1] > 1) // Right
                neighbours += 1;
            if (y > 0 && from[i - CANVAS_WIDTH] > 1) // Top
                neighbours += 1;
            if (y < CANVAS_HEIGHT - 1 && from[i + CANVAS_WIDTH] > 1) // Bottom
                neighbours += 1;
            if (x > 0 && y > 0 && from[i - CANVAS_WIDTH - 1] > 1) // Top left
                neighbours += 1;
            if (x < CANVAS_WIDTH - 1 && y > 0 && from[i - CANVAS_WIDTH + 1] > 1) // Top Right
                neighbours += 1;
            if (x > 0 && y < CANVAS_HEIGHT - 1 && from[i + CANVAS_WIDTH - 1] > 1) // Bottom Left
                neighbours += 1;
            if (x < CANVAS_WIDTH - 1 && y < CANVAS_HEIGHT - 1 && from[i + CANVAS_WIDTH + 1] > 1) // Bottom Right
                neighbours += 1;
            if (from[i] > 1) {
                to[i] = (neighbours == 2 || neighbours == 3) ? alive : dead;
            } else {
                to[i] = (neighbours == 3) ? new : empty;
            }
        }
    }
}

void start() {
    restart();
    while (true) {
        for (uint32_t i = 0; i < CANVAS_WIDTH * CANVAS_HEIGHT; i++) {
            RGBA const *col;
            switch(world_pointer[i]) {
                case empty:
                    col = &clear;
                    break;
                case dead:
                    col = &dark_blue;
                    world_pointer[i] = empty;
                    break;
                case alive:
                    col = &blue;
                    break;
                case new:
                    col = &light_blue;
                    world_pointer[i] = alive;
                    break;
            }
            *((uint32_t *) canvas.data + i) = *((uint32_t *) col);
        }
        if (world_pointer == world_1) {
            tic(world_1, world_2);
            world_pointer = world_2;
        } else {
            tic(world_2, world_1);
            world_pointer = world_1;
        }
        next_frame();
        if (click(MOUSE_BUTTON_LEFT)) restart();
    }
}
