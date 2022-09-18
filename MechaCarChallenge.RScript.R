# Deliverable 1: Linear Regression to Predict MPG

# 3. Use library function to load dplyr package
library(dplyr)

# 4. Import MechaCar_mpg.csv as a dataframe
mechacar_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# 5. Perform linear regression using lm()
mechacar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle 
               + ground_clearance + AWD + mpg,data=mechacar_table) 
# Generate summary statistics
summary(mechacar_lm)

# Deliverable 2: Create Visualizations for the Trip Analysis

# 2. Import and read in Suspension_Coil.csv as a table
suspensioncoil_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# 3. Write an RScript that creates a total_summary dataframe using the 
# summarize() function to get the mean, median, variance, and standard deviation 
# of the suspension coil’s PSI column.
total_summary <- suspensioncoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) 

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() 
# and the summarize() functions to group each manufacturing lot by the mean, 
# median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspensioncoil_table %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups='keep')

# Deliverable 3: T-Tests on Suspension Coils

?t.test

# 1. Use the t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch
t.test(suspensioncoil_table$PSI,mu = 1500)

# 2. Write three more RScripts using the t.test() function and its subset() 
# argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.

# Lot 1
lot1 <- subset(suspensioncoil_table, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu = 1500)

# Lot 2
lot2 <- subset(suspensioncoil_table, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu = 1500)

# Lot 3
lot3 <- subset(suspensioncoil_table, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu = 1500)
