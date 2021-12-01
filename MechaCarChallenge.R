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
# Step 2. Import & Read in the CSV file
suspension_coil <- read.csv(file="../Data_MechaCar_Statistical_Analysis/Suspension_Coil.csv")

# Step 3. creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard
total_summary_df <- suspension_coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')

# Step 4. lot_summary dataframe using the group_by() and the summarize() functions
lot_summary_df <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep')
  