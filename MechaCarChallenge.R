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



