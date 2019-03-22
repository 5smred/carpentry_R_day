# learning dplyr
# carpentry workshop 3-22-19
# Mary Donovan

head(gapminder)
# checking to see if gapminder is still active in new R Script

# how you would import data
gapminder <- read.csv("~/desktop/data-shell/gapminder_data.csv",header=TRUE)

# look at data
head(gapminder)
tail(gapminder)

# install and load the package
# install.packages('dplyr')
library(dplyr)
library(ggplot2)

# select function
# allows you to choose specific columns in your data set
# using pipes with gplyr, use %>%
gap_yr_gdp <- gapminder %>% select(year,gdpPercap)
head(gap_yr_gdp)

# filter function
# selecting rows

gap_1960s <- gapminder %>% filter(year >=1960 & year < 1970)

head(gap_1960s)
nrow(gap_1960s)

# using filter and select together using pipes

gap_yr_gdp_1960s <- gapminder %>% 
  select(year,gdpPercap) %>% 
  filter(year>= 1960 & year < 1970)

head(gap_yr_gdp_1960s)

# challenge 1 

africa_lifExp_counry_yr <- gapminder %>%
  select (continent,country,lifeExp,year) %>%
  filter (continent==Africa)
# didn't work

levels (gapminder$continent)

africa_lifExp_counry_yr <- gapminder %>%
  select (continent,country,lifeExp,year) %>%
  filter (continent==1)

head(africa_lifExp_counry_yr)
#didn't work, no data

# Mary helping
africa_lifExp_counry_yr <- gapminder %>%
  filter (continent=="Africa") %>%
  select (country,lifeExp,year)

head(africa_lifExp_counry_yr)

# needed to have filter first, and have Africa in quotes

tail (africa_lifExp_counry_yr)

nrow (africa_lifExp_counry_yr)

str(africa_lifExp_counry_yr)

# summarizing data, you can calculate the means
# data frame is like pivot table

gdp_by_continent <- gapminder %>% 
  group_by(continent,year) %>%
  summarise(mean_gdp = mean(gdpPercap), sd(gdpPercap))
gdp_by_continent

# mutate function
# add new columns that are functions of the other columns

gdp_pop <- gapminder %>%
  mutate (gdp_billions = (gdpPercap*pop)/10^9)
head(gdp_pop)

# string with ggplot

gapminder %>%
  mutate (gdp_billions = (gdpPercap*pop)/10^9) %>%
  group_by(continent,year) %>%
  summarise(mean_gdp_bill = mean (gdp_billions)) %>%
  ggplot(aes(x=year,y=mean_gdp_bill,color=continent)) +
  geom_point()
