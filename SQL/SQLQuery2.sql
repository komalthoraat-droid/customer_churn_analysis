Select Gender ,Count(Gender) as TotalCount,
Count(Gender)*100.0 /(Select Count(*) from stg_Churn)as Percentage
From stg_Churn
Group By Gender


Select Contract ,Count(Contract) as TotalCount,
Count(Contract)*1.0 /(Select Count(*) from stg_Churn)as Percentage
From stg_Churn
Group By Contract


Select Customer_Status ,Count(Customer_Status) as TotalCount,Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue)/(Select sum(total_Revenue) Count from stg_Churn)* 100 as Percentage
From stg_Churn
Group By Customer_Status


Select State ,Count(State) as TotalCount,
Count(State)*100.0 /(Select Count(*) from stg_Churn)as Percentage
From stg_Churn
Group By State
Order by Percentage desc

Select Distinct Internet_Type
From stg_Churn