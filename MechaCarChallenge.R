# Module 15 Challenge

# Deliverable 1: Linear Regression to Predict MPG
# Step 3. load the dplyr package.
library(dplyr)

# Step 4.Read in the CSV file. 
mechacar <- read.csv(file="../Data_MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

# Step 5.lm() function, pass in all six variables (i.e., columns), and add the dataframe
#generate multiple linear regression model
lm_mechacar <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar)

# Step 6.generate summary statistics
summary(lm_mechacar)

# Deliverable 2: Create Visualizations for the Trip Analysis
# 4.Read in the CSV file
suspension_coil <- read.csv(file="../Data_MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# Step 3
total_summary_df <- 
summarize_Lotwise <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), SD_PSI=sd(PSI), .groups = 'keep')
  