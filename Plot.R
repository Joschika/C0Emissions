setwd("C:/Users/noahr/Documents/GitHub/C0Emissions")
library(readr)
library(dplyr)
read.csv("sat.csv")
therm = read.csv("sat.csv")
library(ggplot2)
library(forcats)
ggplot(therm) +
  aes(x = C0.date, y = C0.mean) group=1 +
  geom_line()
geom_point()

ggplot(data=therm, aes(x = fct_inorder(therm$C0.date), y = therm$C0.mean, group=1)) +
  geom_line(linetype = "dashed")+
  geom_point() +
  labs(title="C0 Emissions Mariupol")+
  labs(x="Date",y="C0 Mean")

ggsave(path = "C:/Users/noahr/Desktop", width = 10, height = 10, device='tiff', filename="Graph.tiff", dpi=1280)


#Need to account for cloud cover
#Need to figure out Y units
