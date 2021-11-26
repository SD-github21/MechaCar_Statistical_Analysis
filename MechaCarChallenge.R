# Deliverable 1
library(dplyr)
data <- read.csv("MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)
head(data)
lm(mpg ~ vehicle_length + vehicle_weight  +  spoiler_angle + ground_clearance + AWD,data=data) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight  +  spoiler_angle + ground_clearance + AWD,data=data)) #generate summary statistics
