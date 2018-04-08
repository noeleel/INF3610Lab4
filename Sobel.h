#pragma once

#include <inttypes.h>


#define IMG_WIDTH 1920
#define IMG_HEIGHT 1080
#define IMG_SIZE (IMG_WIDTH * IMG_HEIGHT)

static inline uint8_t getVal(int index, int xDiff, int yDiff, uint8_t * Y);

uint8_t sobel_operator(const int fullIndex, uint8_t * image);

void sobel_filter(uint8_t inter_pix[IMG_WIDTH * IMG_HEIGHT], unsigned out_pix[IMG_WIDTH * IMG_HEIGHT]);
