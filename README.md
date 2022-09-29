# MechaCar_Statistical_Analysis
Implementation of statistics, and hypothesis testing to analyze a series of datasets from the automotive industry.  Merged csv files into one data frame to create a series of scatter plots between treatment groups with `R`. We then performed statistical analysis to determine differences between treatment groups.

<table><tr>

---

## Resources:

<details>
<summary>Dataset:</summary>

  - `MechaCar_mpg.csv`
  - `Suspension_Coil.csv`
</details>

<details>
<summary>Software and IDE:</summary>

  - `R`
  - `RStudio`
</details>

<details>
<summary>R Open-Source Packages:</summary>

  - `tidyverse`
  - `ggplot2`

</details>

## Project Overview:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots. 
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population. 
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, a summary interpretation of the findings is provided.

## Project Deliverables:
- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition

<table><tr>

---

## Linear Regression to Predict MPG
The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Incorporating R's resources, we designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the `MechaCar_mpg.csv file`.

### _Technical Analysis_
```
MechaData <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F, check.names = F)

MechaLinear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaData)

summary(MechaLinear)
```
_R Console Output_

<p align="center">
<img width="900" src="https://user-images.githubusercontent.com/107281474/192966573-c8f30c36-c5d6-4bf3-aa7d-388af1bf5547.png">
</p>
  
### _Summary_
- From the console output, the variables/coefficients that provides a non-random amount of variance to the mpg values in the `MechaCar_mpg.csv` dataset  are the `vehicle_length`, `ground_clearance`, and `y-intercept` as indiciated due their p-values being significantly smaller than _0.05%_.
  
- The slope of the linear model is not considered to be zero. From the console output, there is two independent variables with significant predictability in the dataset. In our `F-Statistics:` section in the console output, the p-value of our regression model is _5.35 x 10^-11_ which is smaller than the assumed signficance level of _0.05%_. Given this analysis, we, there is sufficent evidence to reject the null hypothesis.  
  
- From the `Linear Regression to Predict MPG`, the linear model predicts mpg of MechaCar prototypes effectively due to the fact that the linear model has an r-squared value of _0.7149_. This translates to that approximately _71.5%_ of all mpg predicitions will be correct and successful when using this given model. 
  
## Summary Statistics on Suspension Coils
The MechaCar `Suspension_Coil.csv` dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Incorporating R's resources, a summary statistics table was created to display:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

### _Technical Analysis_
```
SuspensionData <- read.csv("Suspension_Coil.csv", stringsAsFactors = F, check.names = F)

total_summary <- SuspensionData %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot_summary <- SuspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = "keep")
```
_R Output_
- Total Summary Statistics
<p align="center">
<img width="350" src="https://user-images.githubusercontent.com/107281474/193104232-d99b8263-9f4d-4d17-8616-0c1e72c89772.png">
</p>
  
- Lot Summary Statistics
<p align="center">
<img width="600" src="https://user-images.githubusercontent.com/107281474/193104709-8f67a525-7e86-442c-acd6-0350a52a7d82.png">
</p>

### _Summary_
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. From the `Total Summary Statistics` and `Lot Summary Statistics` we can infer that:
  
- The given sample population has a suspension coil PSI variance of _~62.3_, that falls within the range of the _100_ PSI variance per square inch requirement.
  
- Analying the lots individually, `Lot 1` and `Lot 2` both pass and meet the requirements of the _100_ PSI variance of the suspension coils and fall within _~1_ PSI and _~7.5_ PSI. 
 
- `Lot 3` however, does not meet the suspension coil PSI variance requirement, with a variance of _~170.30_. From the highly skewed PSI variance of `Lot 3`, we can for certain say that `Lot 3` is disproprotionally skewing the total manufacturer's variance to the right. In addition, since `Lot 3's` standard deviation is _13.04_, there is potential outliers.

## T-Test on Suspension Coils
Using R's resources, we created andn performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### _Technical Analysis_
```
# Manufacturing Lot t-test
t.test(SuspensionData$PSI, mu=1500)

# Lot 1
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot1")$PSI, mu=1500)
# Lot 2
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot2")$PSI, mu=1500)
# Lot 3
t.test(subset(SuspensionData, Manufacturing_Lot== "Lot3")$PSI, mu=1500)
```
_R Console Output_
