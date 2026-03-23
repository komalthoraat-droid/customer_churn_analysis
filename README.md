 📊 Customer Churn Analysis Dashboard (Power BI)

🚀 Project Overview

This project focuses on analyzing customer churn behavior using **Power BI**. The goal is to identify key factors that lead to customer attrition and provide actionable insights to improve customer retention.

The dashboard presents interactive visualizations and KPIs to help stakeholders understand churn patterns and make data-driven decisions.

---

🎯 Objectives

* Analyze customer data to identify churn patterns
* Calculate key metrics like **Total Customers, Total Churn, and Churn Rate (%)**
* Discover factors influencing customer churn
* Build an interactive dashboard for business insights

---

🛠️ Tools & Technologies

* Power BI
* Excel / CSV Dataset
* Data Modeling & Visualization
* SQL

---

📂 Dataset

The dataset contains customer information such as:

* Customer ID
* Gender
* Tenure
* Contract Type
* Monthly Charges
* Churn (Yes/No)

---

📈 Key Metrics (DAX Measures)

🔹 Total Customers

```DAX
Total Customers = COUNT(prod_Churn[Customer_ID])
```

🔹 Total Churn

```DAX
Total Churn =
CALCULATE(
    COUNT(prod_Churn[Customer_ID]),
    prod_Churn[Churn] = "Yes"
)
```

🔹 Churn Rate (%)

```DAX
Churn Rate (%) =
DIVIDE([Total Churn], [Total Customers], 0)
```

📊 Dashboard Features

* KPI Cards (Total Customers, Total Churn, Churn Rate)
* Churn distribution by **Gender, Contract Type, Tenure**
* Interactive filters and slicers
* Visual insights using charts and graphs

🔍 Key Insights

* Customers with shorter tenure have higher churn rates
* Month-to-month contracts show higher churn compared to long-term contracts
* Certain customer segments are more likely to churn

---
⚠️ Common Issues & Fixes

* ❌ `SUM()` used on text column → Use `COUNT()` instead
* ❌ Column not found → Check exact column name in dataset
* ❌ Measure errors → Use `CALCULATE()` with proper filters

📌 How to Use

1. Open Power BI Desktop
2. Load the dataset (`.csv` or `.xlsx`)
3. Open `.pbix` file
4. Explore dashboard using filters

🌟 Future Improvements

* Add predictive modeling for churn prediction
* Integrate real-time data
* Deploy dashboard to Power BI Service

👩‍💻 Author

Komal
