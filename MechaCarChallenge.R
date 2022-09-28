### DELIVERABLE 1

# Load dplyr package.
library(dplyr)

# Import and read file as a dataframe.
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using the lm() function. 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))


### DELIVERABLE 2

# Import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file ='Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 

# Create a total_summary dataframe using the summarize() function to get
# the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean_PSI=mean(PSI),
                                               Median_PSI=median(PSI),
                                               Variance_PSI=var(PSI),
                                               Std_Dev_PSI=sd(PSI),
                                               Num_coil=n(), .groups = 'keep')

### DELIVERABLE 3

# Use t.test() function to determine if the PSI across all manufacturing lots 
# is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu=1500)

# Use t.test() function and its subset() argument to determine if the PSI for 
# each manufacturing lot is statistically different from the population mean 
# of 1,500 pounds per square inch.
lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
