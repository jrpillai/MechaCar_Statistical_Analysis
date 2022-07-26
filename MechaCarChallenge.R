library(tidyverse) #load tidyverse
library(dplyr) #load dplyr

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #Read in CSV as dataframe
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics

# Create total summary dataframe with summarize()
Suspension_Coil <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F) #Read in CSV as dataframe
total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI)) #Make summary dataframe

# Create lot summary function with groupby()
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
