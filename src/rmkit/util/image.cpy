#include "../../vendor/stb/stb_image_resize.h"
#include <string.h>

namespace util:
  static void resize_image(image_data &im, int new_w, new_h):
    num_channels := im.channels
    resize_len := new_w*new_h*sizeof(unsigned char)
    if(num_channels >= 3)
      resize_len *= sizeof(uint32_t)
    resize_buffer := (unsigned char*)calloc(resize_len,1)
    err := stbir_resize_uint8((unsigned char*) im.buffer, im.w, im.h, 0,
                       resize_buffer, new_w, new_h, 0, num_channels)



    free(im.buffer)

    im.w = new_w
    im.h = new_h
    im.buffer = (uint32_t*) resize_buffer
