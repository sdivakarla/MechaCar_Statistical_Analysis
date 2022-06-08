# MechaCar_Statistical_Analysis
Statistical Analysis using R

# Overview
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, we helped Jeremy and the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, write a summary interpretation of the findings.

## Linear Regression to Predict MPG
To evaluate performance, a linear regression comparing mpg vs vehicle length, vehicle weight, spoiler angle, ground clearance and whether the vehicle has all-wheel drive (AWD). 

1. The variables which contributed random variance were vehicle length and ground clearance.  The p-values for those variables were less than 0.05.  The variables providing non-random variance include: vehicle weight, spoiler angle and AWD.
2. The slope of the linear model was not zero as indicated by the non-zero values for coefficients in the models. If the slope were zero there would be no correlation between the variables and mpg.  However, as shown by the p-values, there are some variables responsible for non-random variance.
3. To evaluate the effectiveness of the linear model, the r-squared value can be calcluated to determine how well the model "fits" or explains the variance in the data.  The r-squared is 0.68, or 68% of the variance is explained by the model.  This is considered a good fit, but there is additional variance that the model is not explaining. 

<img width="786" alt="LinearRegression" src="https://user-images.githubusercontent.com/98054953/172669006-363425ef-bbbe-4abc-8c0c-270579566a8e.png">

