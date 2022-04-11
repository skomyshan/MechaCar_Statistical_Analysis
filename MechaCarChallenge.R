#Deliverable 1

library(dplyr) #load dplyr
library(tidyverse)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read the file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #perform linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) #perform summary

#Deliverable 2

suspension_coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import suspension coil data

total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table
total_summary

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary

#Deliverable 3

global_sample_table <- suspension_coil_data %>% sample_n(50) #randomly sample 50 data points

plt <- ggplot(suspension_coil_data,aes(x=PSI)) #import all coil data into ggplot2
plt + geom_density() #visualize distribution with density plot

plt <- ggplot(global_sample_table,aes(x=log10(PSI))) #import sample coil data into ggplot2
plt + geom_density() #visualize distribution with density plot

t.test(global_sample_table$PSI,mu=mean(suspension_coil_data$PSI)) #compare sample versus population mean

psi_lot1_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot1') %>% sample_n(25) #create a sample table of 25 data points with Lot 1
t.test(psi_lot1_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot1 sample versus population mean

psi_lot2_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot2') %>% sample_n(25) #create a sample table of 25 data points with Lot 2
t.test(psi_lot2_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot2 sample versus population mean

psi_lot3_sample <- suspension_coil_data %>% subset(Manufacturing_Lot=='Lot3') %>% sample_n(25) #create a sample table of 25 data points with Lot 3
t.test(psi_lot3_sample$PSI,mu=mean(suspension_coil_data$PSI)) #compare Lot3 sample versus population mean
