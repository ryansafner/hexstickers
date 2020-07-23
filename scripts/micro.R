library(hexSticker)
library(tidyverse)
library(mosaic)

IC2=function(x){16.67/x}
IC=function(x){6.25/x}
BC2=function(x){5-0.375*x}
BC=function(x){5-x}

micro3<-ggplot(data.frame(x=c(0,20)), aes(x=x))+
  stat_function(fun=BC, geom="line", color="#e64173", alpha=0.5, size=1)+
  stat_function(fun=IC, geom="line", color="#81a1c1", alpha=0.7, size=1)+
  stat_function(fun=BC2, geom="line", color="#e64173", alpha=1, size=1)+
  stat_function(fun=IC2, geom="line", color="#81a1c1", alpha=1, size=1)+
  geom_point(aes(x=6.67,y=2.5), color="#ebcb8b", size=2)+
  geom_point(aes(x=2.5,y=2.5), color="#ebcb8b", size=2)+
  geom_segment(aes(x=6.67,y=0),xend=6.67,yend=2.5, color="#ebcb8b", linetype=3, size=0.5)+
  geom_segment(aes(x=2.5,y=0),xend=2.5,yend=2.5, color="#ebcb8b",linetype=3, size=0.5)+
  geom_segment(aes(x=0,y=2.5),xend=6.67,yend=2.5, color="#ebcb8b", linetype=3, size=0.5)+
  geom_segment(aes(x=0,y=0), xend=10, yend=0, linetype=1, size=1)+
  geom_segment(aes(x=0,y=0), xend=0, yend=10, linetype=1, size=1)+
  
  
  
  
  scale_x_continuous(breaks=seq(0,10,1), limits=c(0,10), expand=c(0,0))+
  scale_y_continuous(breaks=seq(0,10,1), limits=c(0,10), expand=c(0,0))+
  theme_void()

# micro3

sticker(micro3, package="", h_color="#236192", h_fill="#FFFFFF", s_x=1, s_y=1, s_width=1.25, s_height=1,
        filename="stickers_png/micro_hex.png")