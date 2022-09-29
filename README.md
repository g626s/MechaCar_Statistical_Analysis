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

  - `dpyler`
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

