# some style sources from Ed Rubin's awesome course slids: https://github.com/edrubin/
library(hexSticker)
library(tidyverse)

red_pink <- "#e64173"
turquoise <- "#20B2AA"
orange <- "#FFA500"
red <- "#fb6107"
blue <- "#2b59c3"
green <- "#8bb174"
grey_light <- "grey70"
grey_mid <- "grey50"
grey_dark <- "grey20"
purple <- "#6A5ACD"

venn_colors <- c(green, red, purple, orange, red_pink, "grey60", "grey60", "grey60", "gray60", "gray60")
venn_lines <- rep("solid", 10)
# Locations of circles
venn_df <- tibble(
  x  = c( 0.0,   1.0,    2.5,   -1.0,  0.0, 2.1, -2.5, 2.5, -2,-2),
  y  = c( 0.0,   2.7,   -1.7,    2.4, -2.8, 1.6, 0.0, 0.0, 1.2,-1.9),
  r  = c( 1.9,   0.9,    1.0,    0.6,  0.8, 0.2, 0.2, 0.3, 0.2,0.4),
  l  = c( "A", "B", "C", "D",  "E", "F", "G", "H", "I", "J"))

# Venn
io<-ggplot(data = venn_df, aes(x0 = x, y0 = y, r = r, fill = l, color = l)) +
  ggforce::geom_circle(aes(linetype = l), alpha = 0.3, size = 0.75) +
  theme_void() +
  theme(legend.position = "none") +
  scale_fill_manual(values = venn_colors) +
  scale_color_manual(values = venn_colors) +
  scale_linetype_manual(values = venn_lines) +
  xlim(-5.5, 4.5) +
  ylim(-4.2, 3.8) +
  coord_equal()

# io
sticker(io, package="", h_color="#314f4f", h_fill="#FFFFFF", s_x=0.9, s_y=1, s_width=2.5, s_height=1.5,
        filename="stickers_png/io_hex.png")