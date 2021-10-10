### START HERE
rm(list=ls())
install.packages("tidyverse")
library(tidyverse)
library(ggplot2)

### QUESTION 1
set.seed(110)
data_1 = tibble(measure=rnorm(5, 10, 1))
data_1$site_name <- 'Site 1'
data_2 = tibble(measure=rnorm(5, 10, 1))
data_2$site_name <- 'Site 2'
complete_data = rbind(data_1, data_2)
complete_data

tapply(complete_data$measure, complete_data$site_name, mean)


### QUESTION 2 
set.seed(110)
data_1 = tibble(measure=rnorm(40, 10, 1))
data_1$site_name <- 'Site 1'
data_2 = tibble(measure=rnorm(40, 13, 1))
data_2$site_name <- 'Site 2'
complete_data = rbind(data_1, data_2)

ggplot(complete_data, aes(x=measure, fill = site_name)) + 
  geom_density(alpha = 0.4, bw =0.60) + 
  xlim(5,18)

t.test(data_1$measure, data_2$measure, )

### QUESTION 3 
# I feel like I have been using the same statistic for all questions? Is this what I am supposed to be doing? 
set.seed(110)
site_X = tibble(measure=rnorm(0.60, 0.19, 0.21))
site_X$site_name <- 'Site X'
site_Y = tibble(measure=rnorm(0.61, 0.19, 0.20))
site_Y$site_name <- 'Site Y'
complete_data = rbind(site_X, site_Y)

t.test(site_X$measure, site_Y$measure, )
