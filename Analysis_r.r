library(tidyverse)
library(readr)
library(pander)

ramen_data <- read_csv('/Users/natejhome/Documents/Coding Tools/CS 246/Data Analysis/ramen-ratings.csv')

ramen_data %>%
    group_by(Style) %>%
    summarise(Average_Rating = mean(Stars))


ggplot() +
geom_point(ramen_data, mapping = aes(x = Style, y = Stars))