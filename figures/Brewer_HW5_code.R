#Assignment 5
library(tidyverse)

data <- read.csv("siscowet.csv")

#plot age vs. length
data %>%
  ggplot(aes(x=age,y=len)) +
  geom_point()

#add color to sex data and remove gray background
data %>%
  ggplot(aes(x=age,y=len,
             color=sex)) +
  geom_point()+
  theme_minimal()

#add axis titles,main title,model fit and color blindness palette
data %>%
  ggplot(aes(x=age,y=len,
             color=sex)) +
  geom_point() + 
  ylab("Total \n length \n(mm)") + 
  xlab("Assigned ages (years)") + 
  labs(color="Fish sex",
       title = "Siscowet Lake Trout length increases with age")+
  scale_color_viridis_d()+
  theme_minimal() + 
  theme(axis.title.y = element_text(angle = 0, vjust = 0.5,size=14),
        axis.text = element_text(size=12))+
  geom_smooth(method = "lm", se = FALSE)











