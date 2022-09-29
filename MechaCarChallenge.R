# Importing R dependencies
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG
MechaData <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F, check.names = F)

MechaLinear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaData)

summary(MechaLinear)

# Deliverable 2: Create Visualizations for the Trip Analysis
SuspensionData <- read.csv("Suspension_Coil.csv", stringsAsFactors = F, check.names = F)

total_summary <- SuspensionData %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- SuspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")

# Deliverable 3: T-Tests on Suspension Coils

# Manufacturing Lot t-test
t.test(SuspensionData$PSI, mu=1500)

# Lot 1
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot1")$PSI, mu=1500)
# Lot 2
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot2")$PSI, mu=1500)
# Lot 3
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot3")$PSI, mu=1500)

