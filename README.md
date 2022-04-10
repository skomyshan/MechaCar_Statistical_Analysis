# MechaCar_Statistical_Analysis

## Project Overview
This project tasked us with utilizing statistics and hypothesis tested to analyze a series of datasets from the automotive industry. All of the statistical analysis and visualizations is written in the R programming language.

## Resources
- Data Source:
- Software: RStudio

<br>

## Deliverable 1: Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Is the slope of the linear model considered to be zero? Why or why not?
- Does the linear model predict mpg of MechaCar prototypes effectively? Why or why not?

<p align="center"><img width="502" alt="d1 pic" src="https://user-images.githubusercontent.com/96352751/162641671-dd03b4ab-fa5a-474f-960e-c43c5b11a710.png"></p>

- The summary output indicates that each Pr(>|t|) values represents the probability of each coefficient contributing to a random amount of variance to the linear model. According to our results, vehicle length, ground clearance, and intercept provide a non-random amount of variance to the linear model of mpg.

The multiple linear model states:
```
mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weight + 6.88e-2 * spoiler_angle - 3.41 * AWD + 3.55 * ground_clearance - 1.04e+2
```
Approximated to:

```
mpg = 6.27 * vehicle_length - 3.41 * AWD + 3.55 * ground_clearance - 104
```
The slope of the linear model is not considered to be zero.

- The R-square is 0.71, indicating that 71% of the variations in mpg are impacted by the vehicle length(s), vehicle weight(s), spoiler angle(s), drivetrain(s), and ground clearance(s). We can accept that this linear model efficiently predicts the mpg of MechaCar prototypes.
<br>

## Deliverable 2: Create Visualizations for the Trip Analysis

<p align="center"><img width="506" alt="total_summary" src="https://user-images.githubusercontent.com/96352751/162643544-5ece6bea-0504-469e-a541-a9d367014e5d.png">

<img width="506" alt="lot_sum" src="https://user-images.githubusercontent.com/96352751/162643662-b6a31db4-892d-48b7-9a53-c9510055f442.png">

</p>



