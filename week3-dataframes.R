library(tidyverse)
data("diamonds")

# The following functions will help to quickly review the structure of the data
View(diamonds)
head(diamonds)
str(diamonds)
colnames(diamonds)
glimpse(diamonds)

# create a new columns by using mutate()
mutate(diamonds, carat_2 = carat*100)
