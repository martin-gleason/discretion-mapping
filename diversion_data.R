# diversion data

library("tidyverse")
file <- "/Users/martin.gleason/Dropbox (Personal)/Documents/CORE/publish_diversion_numbers.csv"

diversion <- read_csv(file)

diversion$ZIP <- as.factor(diversion$ZIP)

diversion %>% 
  group_by(SEX, RACE, ZIP) %>% 
  ggplot(aes(x = ZIP, fill = RACE)) + 
  geom_histogram(stat = "count") +
  facet_grid(~ SEX)


diversion %>% 
  group_by(SEX, RACE, ZIP) %>% 
  summarize(total = n(),
            min = min(total),
            max = max(total),
            mean = mean(total),
            median = median(total))

diversion %>% 
  group_by(ZIP, total_days)


diversion %>% filter(total_days == 0)

