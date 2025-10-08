library(tidyverse)


mtcars |> 
  ggplot(aes(wt, mpg)) +
  geom_point(shape = "triangle", size = 3, color ="#E66100") +
  geom_smooth(se = FALSE, color = "#56B4E9", size = 1.3) +
  stat_smooth(
    geom = "point", 
    color = "#56B4E9", 
    xseq = mtcars$wt,
    size = 3
    ) +
  stat_smooth(
    geom = "segment",
    color = "#5D3A9B",
    size = 1.1,
    xseq = mtcars$wt,
    xend = mtcars$wt,
    yend = mtcars$mpg
  ) +
  theme_minimal() +
  theme(
    axis.title = element_blank(),
    axis.text = element_blank()
    )
  