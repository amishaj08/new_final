
library(tidyverse)
library(rvest)
library(janitor)
library(tidyr)
library(ggthemes)


x <- read_rds("plaindata.rds")

x |> 
  slice(1:20) |> ggplot(aes(x = fct_reorder(Nation, Rank), 
                            y = Total, fill = Gold)) + 
  geom_col() + scale_x_discrete(guide = guide_axis(angle = 45)) +
  theme_classic() + 
  labs(title = "Countries in World Karate Championships Ranked by Medals", 
       subtitle = "Japan is #1 with most gold but not the most total medals", 
       x = "Countries", y = "Total Number of Medals", 
       caption = "Source: Wikipedia")

ggsave("world_champs.png", x)

