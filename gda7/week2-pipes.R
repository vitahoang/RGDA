data("ToothGrowth")
View(ToothGrowth)
library(dplyr)

# This function will filter the data
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)

# This will sort the data 
arrange(filtered_tg, len)

# This "nested" function will do filter and short the data
arrange(filter(ToothGrowth, dose==0.5), len)

# This pipes will manipulate the data in the same manner as above
# The "%>%" decorator means you pass the previous function's result to the next
# function
filtered_tgp <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len,na.rm = T), .groups = "drop")
View(filtered_tgp)
