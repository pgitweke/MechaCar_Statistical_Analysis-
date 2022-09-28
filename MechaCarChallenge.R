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


