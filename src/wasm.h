#pragma once
#include <stdint.h>
#include <stdbool.h>

uint32_t rand(uint32_t);
void next_frame();

#define CANVAS_WIDTH 1280
#define CANVAS_HEIGHT 720

#define MOUSE_BUTTON_NONE 0
#define MOUSE_BUTTON_LEFT 1
#define MOUSE_BUTTON_MIDDLE 2
#define MOUSE_BUTTON_RIGHT 3

typedef struct {uint8_t r, b, g, a;} RGBA;
typedef struct {uint32_t width, height; RGBA *data;} Canvas;
typedef struct {uint32_t x, y, button;} Mouse;

RGBA canvas_data[CANVAS_WIDTH * CANVAS_HEIGHT];

Canvas canvas __attribute__((used)) = {.width = CANVAS_WIDTH, .height = CANVAS_HEIGHT, .data = canvas_data};

Mouse __attribute__((used)) mouse = {.x = 0, .y = 0, .button = MOUSE_BUTTON_NONE};

uint8_t click(button) {
    if (mouse.button == button) {
        mouse.button = MOUSE_BUTTON_NONE;
        return true;
    }
    return false;
}
