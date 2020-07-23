source("scripts/hexwall.R")

hexwall(path = "stickers_png/",
        sticker_row_size = 3,
        sticker_width = 500,
        remove_small = TRUE,
        total_stickers = NULL,
        remove_size = TRUE,
        coords = NULL,
        scale_coords = TRUE,
        sort_mode = "random"
)