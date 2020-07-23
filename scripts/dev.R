library(hexSticker)
library(tidyverse)

# Data Source
# https://books.google.ca/books?id=YeoEiNLtrLsC&printsec=frontcover&dq=Angus+Maddison,+The+World+Economy,+vol.+2,+Historical+Statistics&hl=en&sa=X&ved=0ahUKEwjmnbvpy4HSAhWhx4MKHaJ0Ah0Q6AEIJTAA#v=onepage&q=Angus%20Maddison%2C%20The%20World%20Economy%2C%20vol.%202%2C%20Historical%20Statistics&f=false TABLE 1-2 PAGE 30 

maddison <- tibble(year = c(0, 1000, 1820, 1998),
                   gdp = c(444, 435, 667, 5709))

dev<-ggplot(maddison, aes(x = year,
                          y = gdp))+
  #geom_point(color="#81a1c1", size=1.5)+
  geom_path(color="#bf616a", size=1.25)+
  geom_segment(aes(x=0, y=0), xend=2000,yend=0)+
  geom_segment(aes(x=0, y=0), xend=0,yend=6000)+
  annotate("text", x = 1000, y = -750 , label = "Time", color="#000000", family = "Fira Sans")+
  annotate("text", x = -250, y = 2500 , label = "Wealth", color="#000000", angle=90,  family = "Fira Sans")+
  scale_y_continuous(limits=c(-1500,6000), expand=c(0,0))+
  theme_void()
# dev

sticker(dev, package="", h_color="#236192", h_fill="#FFFFFF", s_x=1, s_y=1, s_width=1.5, s_height=1,
        filename="stickers_png/dev_hex.png")
