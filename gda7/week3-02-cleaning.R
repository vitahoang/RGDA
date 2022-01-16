# We need 4 packages for cleaning data
install.packages("here")
install.packages("skimr")
install.packages("janitor")
# dplyr is included with the tidyverse package

# Now load them
library(here)
library(skimr)
library(janitor)
library(dplyr)

# Let's load some data in
install.packages("palmerpenguins")
library(palmerpenguins)

# Skim through the data
skim_without_charts(penguins)
glimpse(penguins)
head(penguins)

penguins %>% 
  select(-species) %>% 
  rename(island_new=island) %>% 
  rename_with(tolower) %>% 
  clean_names()

# Group data in one column and calculate the mean of the other column
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length = mean(bill_length_mm), mean_bill_depth = mean(bill_depth_mm))

# We can group 2 columns
penguins %>% 
  group_by(island, species) %>% 
  drop_na() %>% 
  summarize(mean_bill_length = mean(bill_length_mm), mean_bill_depth = mean(bill_depth_mm)) %>% 
  order_by(mean_bill_length)

