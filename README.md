# MechaCar Statistical Analysis
The purpose of the MechaCar statistical analysis was to gain insights about production data for the MechaCar prototype by completing a series of statistical tests that are presented below. 

### Resources
- Data Sources: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: RStudio 4.1.2 (2021-11-01) -- "Bird Hippie"

# Summary of Results

## Linear Regression to Predict MPG – Deliverable #1
A multiple linear regression analysis was conducted to predict the mpg of MechaCar prototypes using five independent variables from the MechaCar_mpg.csv dataset. The below screen shots detail the full process to complete this analysis:

![image](https://user-images.githubusercontent.com/85533099/143725000-7056dd08-859a-45f7-8458-2cf2161391ab.png)

![image](https://user-images.githubusercontent.com/85533099/143724997-8fffb058-de34-4301-8524-023e07eb6bd7.png)

![image](https://user-images.githubusercontent.com/85533099/143725001-8c035e74-b143-4389-a185-2a8897722ae2.png)

![image](https://user-images.githubusercontent.com/85533099/143725005-afd1e002-a257-423b-88bf-fac5728140e7.png)

## Results for Deliverable #1:
As we can see from the output generated by R, the coefficients of two independent variables were found to be statistically significant: vehicle_length (p = 2.60e-12) and ground_clearance (p = 5.21e-08). Thus, these results indicate that these two variables provided a non-random amount of variance to the mpg values in the dataset. The R output also states that the r-squared value of the model is 0.715 with an associated p value of 5.35e-11, which indicates statistical significance. Consequently, we have sufficient evidence to reject the null hypothesis that the slope of the linear model is zero due to our p value being substantially less than 0.01. However, although two variables in the regression analysis were statistically significant, the other three variables (vehicle_weight, spoiler_angle, and AWD) did not reach statistical significance. These results signify evidence of overfitting.  Therefore, while the analysis did yield some significant findings for two independent variables, this overall linear model does not predict the mpg of the MechaCar prototypes effectively due to the lack of significance obtained in the other variables.

--------------------------------------------------------------------------------------------------------------------------------------

## Summary Statistics on Suspension Coils – Deliverable #2
A second analysis was conducted to examine summary statistics of suspension coils for the MechaCar prototype using the metric of pounds per square inch (PSI). The following screen shots reveal summary statistics (i.e., mean, median, variance, and standard deviation) conducted for PSI (1) across all the manufacturing lots and (2) for each lot:

![image](https://user-images.githubusercontent.com/85533099/143725041-0d8f47b7-5e9b-4b7e-b8ed-ce6b69f7fb66.png)

![image](https://user-images.githubusercontent.com/85533099/143725044-537ffe64-f0ad-41c3-9777-bbf28a7bdaa9.png)

### Results for Deliverable #2:
In reviewing the summary statistics for all manufacturing lots, the mean is 1498.78 (sd=7.89) and the median is 1500. The variance is 62.29, which meets the design specifications for the MechaCar suspension coils, i.e., the variance does not exceed 100 pounds per square inch. When we examine the results obtained by comparing each individual lot, we see that the means and medians for suspension coils from Lots 1 and 2 are both 1500 with standard deviations of 0.99 and 2.73 respectively. Suspension coils from Lot 3 yielded a mean of 1496.14 and median of 1498.5, with a standard deviation of 13.05. However, while the variance for Lots 1 and 2 meets our design specifications to not exceed 100 pounds per square inch, we see that Lot 3 exceeds the design specifications because the variance is 170.29.  

--------------------------------------------------------------------------------------------------------------------------------------

## T-Tests on Suspension Coils – Deliverable #3
A third analysis was conducted by extending the results of Deliverable #2 to investigate if the mean PSI values obtained for the total manufacturing lots as well as each lot individually were statistically different from the population mean of 1,500 pounds per square inch. The below screen shots detail this series of analyses:

## (1) One sample t-test to compare the mean PSI value obtained for the total manufacturing lots against the population mean

![image](https://user-images.githubusercontent.com/85533099/143725057-ddab78db-97a3-4a52-b41c-91ecd8e17270.png)

## (2) One sample t-test to compare the mean PSI value obtained for Lot 1 against the population mean

![image](https://user-images.githubusercontent.com/85533099/143725062-de2f9770-93a7-4632-a868-e0c0dcc81d3d.png)

## (3) One sample t-test to compare the mean PSI value obtained for Lot 2 against the population mean

![image](https://user-images.githubusercontent.com/85533099/143725070-e5390bd2-c2fc-440a-ac20-efe091eb970b.png)

## (4) One sample t-test to compare the mean PSI value obtained for Lot 3 against the population mean

![image](https://user-images.githubusercontent.com/85533099/143725082-50953625-b1df-4f30-8574-01644c461b09.png)

### Results for Deliverable #3:
Our series of analyses indicated that the t-test results obtained to examine the mean PSI values for all manufacturing lots (t = -1.89, p = 0.06) as well as the mean PSI value for Lot 1 (t = 0, p = 1) and Lot 2 (t = 0.52, p = 0.61) were not statistically significant from the mean PSI value of the population, i.e., 1,500. However, the one sample t-test conducted on Lot 3 (t = -2.09, p = 0.04) provided sufficient evidence to reject the null hypothesis and conclude that the mean PSI value for Lot 3 is statistically different from the mean PSI value of the population. 

--------------------------------------------------------------------------------------------------------------------------------------

## Study Design: MechaCar vs Competition – Deliverable #4

Recent research has suggested that, while the overall number of road traffic collisions has decreased around the world due to the COVID-19 pandemic, there was also a documented relative increase of severe injuries and deaths ([Link to research study](https://wjes.biomedcentral.com/articles/10.1186/s13017-021-00395-8)).

In light of this phenomenon, a timely and important statistical study that can illuminate how MechaCar outperforms its competitors would be to examine safety ratings as a metric of valued interest. Specifically, we would examine if the mean safety rating for the MechaCar prototype differs from the mean safety rating of different competitors. Preliminary research through a Google search identifies the car brands that yield the highest safety ratings ([Link to website](https://www.caranddriver.com/features/g20955601/safest-cars/)).

Therefore, we can investigate how well our MechaCar prototype compares to its top competitors.  Hypotheses for this statistical test would be as follows:

  H0: There is no statistical difference between the mean safety rating for MechaCar and the mean safety rating for its competitors
  
  HA: There is a statistical difference between the mean safety rating for MechaCar and the mean safety rating for its competitors

We can utilize a two sample t-test for this analysis. A two sample t-test would allow us to test whether the means of two samples are statistically different. We have already completed the preliminary research to identify the top car brands highlighted as earning the IIHS Top Safety Pick+ award for 2021 (see above website link). Our next step would be to calculate the mean safety rating for the MechaCar prototypes by collecting the safety ratings on the 50 MechaCar prototypes and running summary statistics in R to yield the mean safety rating for the MechaCar. Next, we would need to obtain the mean safety rating for the top competitors who won the Top Safety Pick+ award for 2021. We can compile the data for the top competitors into a CSV file with two columns, i.e., the name of the brand and the reported safety rating. Then we can calculate the overall mean safety rating for these top competitors in R. Presuming that our assumptions are met, we would use the t.test() function in R with arguments x and y to compare the mean safety ratings between our MechaCar prototype and the top competitors in order to determine whether the MechaCar's average safety rating is statistically different from the average safety rating of its top competitors. 





