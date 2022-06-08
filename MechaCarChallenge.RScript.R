# Load Library
library(dplyr)
library(tidyverse)
# Read data from CSV
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
coil_table <- read.csv(file="Suspension_Coil.csv",check.names = F, stringsAsFactor = F)
#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table) 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=car_table) 
)
#Summary Table of Suspension Coil Data
total_summary <- coil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),StdDev=sd(PSI),Var_PSI=var(PSI), .groups = 'keep') #create summary table with multiple columns
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),StdDev=sd(PSI),Var_PSI=var(PSI), .groups = 'keep') #create summary table

#T-test to compare Coil_Table population to 1500  PSI
plt <- ggplot(coil_table, aes(PSI))
plt + geom_density() #verify distribution approximates normal distribution
# run single t-test on coil_table
t.test((coil_table$PSI),mu=1500) #compare sample versus 1500 PSI

# run single t-test on each lot
t.test(subset(coil_table, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
t.test(subset(coil_table, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
t.test(subset(coil_table, Manufacturing_Lot == "Lot3")$PSI, mu=1500)

