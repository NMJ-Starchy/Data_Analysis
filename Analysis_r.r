library(tidyverse)
library(readr)
library(pander)

ramen_data <- read_csv('/Users/natejhome/Documents/Coding Tools/CS 246/Data Analysis/ramen-ratings.csv')

# Calculates the average ramen rating by style
ramen_data %>%
    group_by(Style) %>%
    summarize(Average_Rating = mean(Stars))

# Calculates the average ramen rating by country
ramen_data %>%
    group_by(Country) %>%
    summarize(Average_Rating = mean(Stars))

# Plot the amount of Ramen products made by country
ggplot(ramen_data, mapping = aes(x = Country, color = Country, fill = Country)) +
    geom_histogram(stat = 'count') +
    ylab('Number of Ramen Products')


# Plot the Star ratings of the different ramen styles
ggplot() +
geom_point(ramen_data, mapping = aes(x = Style, y = Stars, color = Country))