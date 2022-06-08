# MechaCar Statistical Analysis
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

# Summary Statistics on Suspension Coils

In evalauting the Suspension Coil data, summary statistics were used to determine the variability in the tests on the coils. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Compliance with this standard was evaluated on all manufacturing lots in total as well as each individual lot. 

1. Lots in total - The lots in total meet the criteria of the variance not exceeding 100 pounds per square inch (PSI).  As shown in the table, below, the variance of the total lots was 62.29 PSI, less than 100 PSI; however, still a notable variance. 
<img width="415" alt="Total_Summary" src="https://user-images.githubusercontent.com/98054953/172671283-cda8c37c-17e8-44ab-8405-633c7ea456e1.png">

2. Individual lot variance - The individual lots provides additional details concerning the variance noted in the analysis of the total lots. 
- Lot 1 showed 0.98 PSI variance, well below the criteria. 
- Lot 2 showed 7.47 PSI variance, still below the criteria.
- Lot 3 showed 170.29 PSI variance, well above the criteria. 
Lot 3 appears to be primarily responsible for the variance shown in the total analysis and the performance of Lot 3 merits further review.

<img width="615" alt="Lot_Summary" src="https://user-images.githubusercontent.com/98054953/172671669-3aa713bb-7d56-4672-8041-5f02054aa4a3.png">

## T-Tests on Suspension Coils

In statistics, t-tests are used to compare the mean of one dataset to that of another.  The production standard for the cars is for the PSI to not statistically differnt from 1500 PSI. T-tests were performed on the samples as a whole as well as each individual lot. 

1. The t-test on the lots in total - The p-value is 0.06, which is greater than 0.5, so the test fails to reject the hypothesis that the means are statistically significantly different.  As a whole the samples meet the standard of 1500 PSI.  The low p-value does indicate that there is almost a statistically significant differnce. 

<img width="505" alt="ttest_all" src="https://user-images.githubusercontent.com/98054953/172674736-5fdff222-3074-4c22-af60-070d1f0de065.png">

2. Individual Lot t-test results - The individual lots again have different results concerning the t-tests. 
- Lot 1 had a p-value of 1 showing that the mean of the Lot 1 dataset is not different from the population mean. 
- Lot 2 had a p-value of 0.61, showing that the mean of Lot 2 dataset is also not different from the population mean. 
- Lot 3 had a p-value of 0.04, less than 0.05, indicating that the mean of Lot 3 is different from the population mean and does not mean the standard of 1500 PSI.

<img width="620" alt="ttest_by_lot" src="https://user-images.githubusercontent.com/98054953/172674715-c2657142-011e-47e0-a672-d25fbf415492.png">

# Study Design: MechaCar vs Competitor

MechaCar would like a comparison of its vehicle and those of its competitor.  When designing statistical tests to evaluate datasets and the variables responsible for the variance, the ANOVA (Analysis of Variance) is a robust test.  ANOVA compares the means of a continuous numerical variable across multiple factors. The factors to collect data for the analysis could include: 
- Fuel economy
- Reliability ratings
- Safety ratings
- Brake performance
- Cost of maintenance
The null hypothesis would be that the mean of the factors are the same and would require a confidence level of 0.05 to demonstrate that there is a statitisically significant difference. For the ANOVA analysis, the data is required to be: the dependent variable must be a continuous (interval or ratio) level of measurement. The independent variables in ANOVA must be categorical (nominal or ordinal) variables. Because ANOVA can include multiple factors in analysis of the variables, if variance is determined, then additional analysis will be required to study the variance. The additional tests could include t-tests of the individual factors. 
