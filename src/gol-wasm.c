#include "wasm.h"
#include <stdint.h>
#include <stdbool.h>
#define BUFFER_WIDTH 1280
#define BUFFER_HEIGHT 520

typedef struct rgba {uint8_t r, b, g, a;} rgba;

typedef enum cell {empty, dead, alive, new} cell;

rgba frame_buff[BUFFER_WIDTH * BUFFER_HEIGHT];

rgba const clear = {0, 0, 0, 0};
rgba const light_blue = {190, 190, 255, 255};
rgba const blue = {80, 80, 200, 255};
rgba const dark_blue = {0, 0, 70, 255};

cell world_1[BUFFER_WIDTH * BUFFER_HEIGHT];
cell world_2[BUFFER_WIDTH * BUFFER_HEIGHT];
cell *world_pointer = world_1;

void restart() {
    for (uint32_t i = 0; i < BUFFER_WIDTH * BUFFER_HEIGHT; i++)
        world_pointer[i] = rand(2) ? new : empty;
}

void mouse_down(const int button) {
    restart();
}

void tic(const cell *from, cell *to) {
    for (int y = 0, i = 0; y < BUFFER_HEIGHT; y++) {
        for (int x = 0; x < BUFFER_WIDTH; x++, i++) {
            uint8_t neighbours = 0;
            if (x > 0 && from[i - 1] > 1) // Left
                neighbours += 1;
            if (x < BUFFER_WIDTH - 1 && from[i + 1] > 1) // Right
                neighbours += 1;
            if (y > 0 && from[i - BUFFER_WIDTH] > 1) // Top
                neighbours += 1;
            if (y < BUFFER_HEIGHT - 1 && from[i + BUFFER_WIDTH] > 1) // Bottom
                neighbours += 1;
            if (x > 0 && y > 0 && from[i - BUFFER_WIDTH - 1] > 1) // Top left
                neighbours += 1;
            if (x < BUFFER_WIDTH - 1 && y > 0 && from[i - BUFFER_WIDTH + 1] > 1) // Top Right
                neighbours += 1;
            if (x > 0 && y < BUFFER_HEIGHT - 1 && from[i + BUFFER_WIDTH - 1] > 1) // Bottom Left
                neighbours += 1;
            if (x < BUFFER_WIDTH - 1 && y < BUFFER_HEIGHT - 1 && from[i + BUFFER_WIDTH + 1] > 1) // Bottom Right
                neighbours += 1;
            if (from[i] > 1) {
                to[i] = (neighbours == 2 || neighbours == 3) ? alive : dead;
            } else {
                to[i] = (neighbours == 3) ? new : empty;
            }
        }
    }
}

void draw() {
    for (uint32_t i = 0; i < BUFFER_WIDTH * BUFFER_HEIGHT; i++) {
        rgba const *col;
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
        *((uint32_t *) frame_buff + i) = *((uint32_t *) col);
    }
    if (world_pointer == world_1) {
        tic(world_1, world_2);
        world_pointer = world_2;
    } else {
        tic(world_2, world_1);
        world_pointer = world_1;
    }
    update(frame_buff, draw);
}

void main() {
    restart();
    draw();
}
