library(hexSticker)
library(gapminder)
library(tidyverse)

gapminder<-gapminder %>%
  mutate(l.gdp=log(gdpPercap))

gapminder2007<- gapminder %>%
  filter(year==2007)

p<-library(gapminder)
library(tidyverse)
gapminder<-gapminder %>%
  mutate(l.gdp=log(gdpPercap))

gapminder2007<- gapminder %>%
  filter(year==2007)

p<-ggplot(data = gapminder2007,
          mapping = aes(x=gdpPercap,
                        y=lifeExp))+
  geom_point(aes(fill=continent, size=pop), color="white", pch=21)+
  geom_smooth(color="black", se=F)+
  #geom_point(aes(size=pop),shape=1,color="white")+
  theme_void()+
  scale_x_log10(labels=scales::dollar)+
  theme(legend.position = "")+
  scale_size(breaks = c(100000, 1000000, 100000000, 1000000000), labels=c("<1 million","1-100 million","100-999 million", "1 billion+"), range=c(1,15))

sticker(p, package="", h_color="#236192", h_fill="#FFFFFF", s_x=1, s_y=.9, s_width=1.6, s_height=1.35,
        filename="stickers_png/metrics_hex.png")
