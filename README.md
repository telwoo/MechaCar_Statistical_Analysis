# MechaCar_Statistical_Analysis

## Overview of Project
Jeremy needed assistance with a new project for AutosRUs’ newest prototype, the MechaCar. This was suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ wanted the data analytics team to review the production data for insights that may help the manufacturing team. This project is all about analyzing data and creating appropriate documentation of such.

## Linear Regression to predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? That would be: vehicle_length and ground_clearance.
- Is the slope of the linear model considered to be zero? Why or why not?n No, because the r-squared value (.7149) has a strong correlation between the variables/coefficients.
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? Yes, because states 71.49 times out of 100 of effectiveness. 

lm function summary:

![5  lm function D1](https://user-images.githubusercontent.com/106715923/190919733-11000aec-8161-48c2-883f-89d2f6fdc2f9.png)

summary, including p-value:

![6 summary function D1](https://user-images.githubusercontent.com/106715923/190919748-7f8083d1-d1fe-4689-aaec-4a6e94f39e21.png)


## Summary Statistics on Suspension Coils

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not? 

- Each of the lots met the specifications in total, but lot 3 doesn't meet those exactly. The vairance of suspension coils in lot 3 exceeds 100 pounds per square inch. lot 3's mean and median are slightly smaller and it's standard deviation is larger than lOT 1 AND 2.

 - In the below screenshot, it outlines the overall mean for PSI levels was 1,498.78, the median 15000, the variance 62.29, and standrard deviation 7.89.

![total_summary](https://user-images.githubusercontent.com/106715923/191117265-ab160064-6613-4bdd-a3ba-fa7b7f6a5b70.png)


-The lot changes is seen below. Lot 1, Lot 2, and Lot 3 - the meand and median between each of the lots are identical or within close range. However, the variance and standard deviation shows a wild variety.

![lot_summary](https://user-images.githubusercontent.com/106715923/191117288-871406a5-3843-4882-9e5a-55307f3bfe54.png)


## T-Tests on Suspension Coils
Below are details on the lot t-test summaries:

Lot 1
![lot1_ttest](https://user-images.githubusercontent.com/106715923/191123262-61122b7b-9ff9-42fb-8dbd-d97d1518f3f4.png)



Lot 2
![lot2_ttest](https://user-images.githubusercontent.com/106715923/191123277-11b9b00e-c45f-4620-b26f-5e99f0870baf.png)


lot 3
![lot3_ttest](https://user-images.githubusercontent.com/106715923/191123307-ca98da88-9d63-49e6-9bb4-4be5a6ed726c.png)



## Study Design: mechaCar vs. Competition
- What metric or metrics are you going to test? 'd try to test city and highway fuel effieincy, to include maintenance cost.
- What is the null hypothesis or alternative hypothesis? The null hypothesis would be: MechaCar has the same fuel efficiencies as competitors in the same class. The alternative hypothesis:  fuel efficiencies aren't all the same for each car in the class.
- What statistical test would you use to test the hypothesis? And why? I believe the two-sample t-test would be beneficial because it would better outline the numerical metrics for the city and fuel efficiency. 
- What data is needed to run the statistical test? There would need to be more details on highway mpgs, city, fuel details for each car model. If the car years could be kept within a 3 years or newer period, that would help with less complexity. 




