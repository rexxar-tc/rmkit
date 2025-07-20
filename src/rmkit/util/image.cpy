#include "../../vendor/stb/stb_image_resize.h"
#include <string.h>

namespace util:
  static void resize_image(image_data &im, int new_w, new_h, threshold=255):
    num_channels := im.channels
    resize_len := new_w*new_h*sizeof(unsigned char)*num_channels
    resize_buffer := (unsigned char*)malloc(resize_len)
    memset(resize_buffer, 0, resize_len);
    err := stbir_resize_uint8((unsigned char*) im.buffer, im.w, im.h, 0,
                       resize_buffer, new_w, new_h, 0, num_channels)



    free(im.buffer)

    im.w = new_w
    im.h = new_h
    im.buffer = (uint32_t*) resize_buffer
