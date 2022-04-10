#Deliverable 1

library(dplyr) #load dplyr

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read the file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar) #perform linear regression

