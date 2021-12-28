library(hexSticker)
library(tidyverse)
library(showtext) # for Fira Sans font
font_add_google("Fira Sans Condensed")

# Data Source
# https://books.google.ca/books?id=YeoEiNLtrLsC&printsec=frontcover&dq=Angus+Maddison,+The+World+Economy,+vol.+2,+Historical+Statistics&hl=en&sa=X&ved=0ahUKEwjmnbvpy4HSAhWhx4MKHaJ0Ah0Q6AEIJTAA#v=onepage&q=Angus%20Maddison%2C%20The%20World%20Economy%2C%20vol.%202%2C%20Historical%20Statistics&f=false TABLE 1-2 PAGE 30 

maddison <- tibble(year = c(0, 1000, 1820, 1998),
                   gdp = c(444, 435, 667, 5709))

dev<-ggplot(maddison, aes(x = year,
                          y = gdp))+
  #geom_point(color="#81a1c1", size=1.5)+
  geom_path(color="#1c7726", size=1.25)+
  geom_segment(aes(x=0, y=0), xend=2000,yend=0)+
  geom_segment(aes(x=0, y=0), xend=0,yend=6000)+
  annotate("text", x = 1000, y = -750 , label = "Year", color="#000000", family = "Fira Sans Condensed", size = 3)+
  annotate("text", x = 0, y = -500 , label = "0", color="#000000", family = "Fira Sans Condensed", size = 2)+
  annotate("text", x = 1980, y = -500 , label = "2000", color="#000000", family = "Fira Sans Condensed", size = 2)+
  annotate("text", x = -250, y = 2500 , label = "Wealth", color="#000000", angle=90,  family = "Fira Sans Condensed", size = 3)+
  scale_y_continuous(limits=c(-1500,6000), expand=c(0,0))+
  theme_void()
# dev

sticker(dev, package="", h_color="#771C6D", h_fill="#FFFFFF", s_x=1, s_y=1, s_width=1.5, s_height=1,
        filename="stickers_png/dev_hex.png")
