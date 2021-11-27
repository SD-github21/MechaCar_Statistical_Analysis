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

# Deliverable #3
PSItest <- read.csv("Suspension_Coil.csv", check.names=F,stringsAsFactors = F)
head(PSItest)

#Conducting a 1 sample t test comparing the mean PSI  of all manufacturing lots to the mean PSI in the population of cars
t.test((PSItest$PSI),mu=1500) #compare sample versus population means

#Conducting 1 sample t tests comparing the mean PSI for each lot against the mean PSI of the population
# Lot1
PSILot1 <- subset(PSItest, Manufacturing_Lot == "Lot1")
PSILot1
t.test((PSILot1$PSI),mu=1500) #compare Lot 1 PSI versus population means

#Lot2
PSILot2 <- subset(PSItest, Manufacturing_Lot == "Lot2")
PSILot2
t.test((PSILot2$PSI),mu=1500) #compare Lot 2 PSI versus population means

#Lot3
PSILot3 <- subset(PSItest, Manufacturing_Lot == "Lot3")
PSILot3
t.test((PSILot3$PSI),mu=1500) #compare Lot 3 PSI versus population means
