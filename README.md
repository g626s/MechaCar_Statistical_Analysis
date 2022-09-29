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
  
  
  
  
  
  


