# Module 15 Challenge
# Deliverable 1: Linear Regression to Predict MPG

#Step 3. load the dplyr package.
library(dplyr)

# Step 4.Read in the CSV file. 
mechacar <- read.csv(file="../Data_MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# Step 5 .lm() function, pass in all six variables (i.e., columns), and add the dataframe

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)

# Step 6.generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))

# Deliverable 2: Create Visualizations for the Trip Analysis
# Step 2 import and read in the Suspension_Coil.csv
suspension_coil <- read.csv(file="../Data_MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# Step 3 create dataframe to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary_df <- suspension_coil %>% summarize(Mean_PSI=mean(PSI), Median=median(PSI), Variance=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# Step 4 create lotwise df of the mean, median, variance, and standard deviation of the suspension coil's PSI column
lot_summary_df <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median=median(PSI), Variance=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# Deliverable 3: T-Tests on Suspension Coils
# Step 1 . determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI,mu=1500)

# Step 2 . three more RScripts to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
# R_script 1
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot1")$PSI,mu=1500)
# R_script 2
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot2")$PSI,mu=1500)
# R_script 3
t.test(subset(suspension_coil, Manufacturing_Lot=="Lot3")$PSI,mu=1500)


