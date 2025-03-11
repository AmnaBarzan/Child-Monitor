# Child Well-Being Monitor - Power BI Dashboard

## Overview
The **Child Well-Being Monitor** dashboard provides a data-driven insight into childhood poverty in Ethiopia and India. By analyzing various indicators, this project aims to support informed decision-making for child welfare interventions and policy development.

## Dashboard Preview
![Dashboard Screenshot](https://drive.google.com/uc?export=view&id=1O2dd3Qd7KYYbUydTDj8xoBWWIv61R48t)
[Click here to view the dashboard](https://app.powerbi.com/view?r=eyJrIjoiYjEyZThjNTktNGQ4Zi00NjJmLWEyMDMtZmY2YzhmZWE0NDE3IiwidCI6ImU3NGM1ZjYxLTNhYzMtNDRmNi1iMzhhLWJjMDIyODYwNDc5NSIsImMiOjEwfQ%3D%3D) 
(https://app.fabric.microsoft.com/groups/me/reports/f78b4c6f-bd9f-43f2-ac31-582ceb1dc587/7b433ec8f53718fb895b?experience=fabric-developer)

## Objective
This project seeks to leverage **Power BI** to analyze child poverty data from the *Young Lives* study. The study, spanning over 15 years, follows children’s lives across various dimensions—nutrition, education, and well-being. Our dashboard transforms this extensive dataset into actionable insights to help stakeholders better understand child development and poverty trends.

## Tools & Technologies Used
| Tool/Technology | Description |
|---------------|-------------|
|  **Microsoft Azure** | Database storage |
|  **SQL Server** | Data processing & transformation |
|  **Power BI** | Visualization & reporting |
|  **Microsoft Fabric** | Paginated reports |
|  **Power BI Report Builder** | Creating paginated reports |

## Data Preparation
1. **Data Acquisition**: Connected Microsoft Azure to SQL Server and uploaded the *Young Lives* dataset.
2. **Data Cleaning**: Removed null values, relabeled categorical variables, and standardized data formats.
3. **Database Structuring**: Created relational tables and views for easy data retrieval.
4. **Data Transformation**: Used calculated tables and measures in Power BI to derive meaningful insights.
5. **Dashboard Creation**: Developed an interactive Power BI dashboard and exported paginated reports.

## Insights & Key Findings
### **1. Demographics & Participation**
- **Total Participants**: 6,018 children (balanced gender distribution).
- **Geographical Focus**: Majority from rural areas, emphasizing poverty-stricken regions.

### **2. Food Security & Malnutrition**
- The composition of children frequently underfed and those with limited food variety was nearly equal.
- Non-stunted children displayed better health indicators.
- Paginated reports provide granular insights into food security by gender and malnutrition status.

### **3. Education & Literacy**
- **University-educated parents correlate with child literacy.**
- **Overall literacy rate**: Only **33.71%** of children were literate.
- Many children started formal education later than the ideal age.

### **4. Living Conditions**
- A significant disparity in wealth index (WI) between urban and rural areas.
- Stable WI correlates with good health; declining WI observed in early adulthood (possibly due to marriage and economic shifts).
- **Homeownership was strongly linked to higher WI.**

### **5. Health & Cognitive Development**
- **PPVT (Peabody Picture Vocabulary Test) scores** were used to assess cognitive development.
- Good health positively correlated with higher cognitive scores.

## Paginated Reports
The project includes **paginated reports** built using **Power BI Report Builder**, allowing for highly detailed, printable reports. These reports provide in-depth analysis on:
- Food security and malnutrition trends by demographic groups.
- Educational attainment and literacy distribution.
- Health and cognitive development assessments.
- Socioeconomic status and wealth index comparisons.

Paginated reports complement the interactive dashboard by offering structured, print-ready documents for stakeholders and policymakers.

## Conclusion
This dashboard provides valuable insights into childhood poverty, food security, education, health, and wealth disparities in Ethiopia and India. By transforming data into an interactive visual format, stakeholders can derive meaningful conclusions and drive policy changes to improve child well-being.
