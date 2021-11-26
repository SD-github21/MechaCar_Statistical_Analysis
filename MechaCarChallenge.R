# Deliverable 1
library(dplyr)
data <- read.csv("MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)
head(data)
lm(mpg ~ vehicle_length + vehicle_weight  +  spoiler_angle + ground_clearance + AWD,data=data) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight  +  spoiler_angle + ground_clearance + AWD,data=data)) #generate summary statistics

# Deliverable 2
suscoildata <- read.csv("Suspension_Coil.csv", check.names=F,stringsAsFactors = F)
head(suscoildata)

total_summary <- summarize(suscoildata, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) #generate summary stats for PSI
total_summary

lot_summary <- suscoildata  %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep') 
lot_summary