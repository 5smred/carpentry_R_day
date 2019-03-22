#ggplot lesson
#carpentry workshop
#3-22-19
#Sharon Solis teaching
library("ggplot2")
yes
gapminder <- read.csv("~/desktop/data-shell/gapminder_data.csv", header=TRUE)

gapminder[2,]

head(gapminder)
tail(gapminder)
gapminder[900:905,5:6]

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) +
  geom_line(aes(color=continent)) +
  geom_point()

#change the color to purple 

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) +
  geom_line(color="blue") +
  geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) +
  geom_point(aes(color=continent))+
  geom_line() 
  
ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) +
  geom_point()+
  geom_line(aes(color=continent)) 

#back to scatterplot

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,by=country)) +
  geom_point(aes(color=continent))

#remove outliers

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) +
  geom_point(size=1,shape=3,aes(color=continent)) +
  scale_x_log10() +
  geom_smooth(method="loess",col="blue",size=1)

ggplot(data=gapminder,aes(x=year,y=pop,by=country))+
  geom_point()

             


