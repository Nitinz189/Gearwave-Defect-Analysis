# Gearwave Defect Analysis

## Project Context
Gearwave is a fictional bike parts manufacturing company.  
In this project, I worked as a **Junior Data Analyst** supporting the production and manufacturing teams to analyze defect data and identify opportunities for quality improvement.

The analysis focuses on understanding defect trends, cost drivers, inspection effectiveness, and product-level quality issues using historical defect data.

---

## Business Questions
The manufacturing and production teams raised the following key questions:

1. How has the defect rate changed over time?
2. Which defect types contribute the most to overall defects?
3. Which defect types are the most expensive to fix?
4. How does defect severity impact repair cost?
5. Which inspection method detects the most critical defects?
6. Are certain defect locations associated with higher severity?
7. Do certain inspection methods lead to lower repair costs?
8. Which products generate the highest number of defects?

---

## Dataset Overview
The dataset contains **1,000 defect records** collected over **6 months** with the following fields:

- `defect_id` – Unique identifier for each defect  
- `product_id` – Identifier for the affected product  
- `defect_type` – Cosmetic, Functional, or Structural  
- `defect_description` – Description of the defect  
- `defect_date` – Date when the defect was detected  
- `defect_location` – Surface, Internal, or Component  
- `severity` – Minor, Moderate, or Critical  
- `inspection_method` – Visual, Manual, or Automated testing  
- `repair_action` – Action taken to resolve the defect  
- `repair_cost` – Cost incurred for repair  

---

## Data Preparation
**Excel**
- Identified inconsistent date formats where some dates were stored as text
- Converted all dates into Excel date serial format for consistency

**SQL (PostgreSQL)**
- Created a dedicated database and table structure
- Inserted cleaned data into PostgreSQL
- Performed all analysis using SQL queries for accuracy and scalability

---

## Analysis Approach
1. Cleaned and standardized raw defect data
2. Created database tables in PostgreSQL
3. Used SQL to perform aggregation, grouping, and trend analysis
4. Analyzed defect trends, severity, inspection methods, and repair costs
5. Summarized findings into business-focused insights and recommendations

---

## Key Insights

### Defect Trend Over Time
- Overall defect volume declined by **approximately 21%** over six months
- Month-to-month fluctuations indicate quality improvements are not yet fully stabilized

![Defect count change over time](https://github.com/Nitinz189/Gearwave-Defect-Analysis/blob/main/images/Screenshot%202025-12-23%20051338.png)

### Defect Type Contribution
- Structural defects contribute **35.2%** of total defects
- Functional defects contribute **33.9%**
- Together, these two categories account for nearly **69% of all defects**

### Repair Cost by Defect Type
- Structural defects generate the **highest total repair cost** due to volume
- Cosmetic defects have a **higher average repair cost per defect**, indicating higher rework effort per incident

### Severity vs Repair Cost
- Minor defects contribute higher **total cost** due to frequency
- Critical defects have the **highest average repair cost**, making them high-risk issues

### Inspection Method Effectiveness
- Manual inspection detects the highest number of critical defects
- Visual inspection follows closely
- Automated testing detects fewer defects but shows better cost efficiency

### Defect Location and Severity
- Internal and surface locations show a slightly higher association with critical defects
- Severity risk is distributed across all locations, not isolated to one area

### Inspection Method vs Repair Cost
- Manual testing contributes the highest share of total repair cost (36.5%)
- Automated testing has the **lowest average repair cost**, indicating earlier defect detection

### Product-Level Defects
- A small number of products account for a large share of defects
- Products **63 and 81** are the most defect-prone, indicating recurring quality issues

![Product with highest defect counts](https://github.com/Nitinz189/Gearwave-Defect-Analysis/blob/main/images/Screenshot%202025-12-23%20045224.png)

---

## Business Impact
- High-cost defects can be reduced by focusing on structural and critical defects
- Early detection through automated testing reduces downstream repair costs
- Targeted analysis of high-defect products enables focused quality improvements

---

## Recommendations
- Prioritize reduction of structural and functional defects
- Introduce automated testing earlier in the production process
- Conduct root-cause analysis on products with recurring defects (e.g., 63 and 81)
- Use a balanced mix of manual, visual, and automated inspections to optimize cost and coverage

---

## Tools Used
- SQL (PostgreSQL)
- Excel
- Tableau
- PowerPoint

---

## Repository Structure
| File | Description |

| `Creating_database_and_table.sql` | Database and table setup |

| `SQL_analysis.sql` | SQL queries for defect analysis |

| `defects_cleaned_data.csv` | Cleaned dataset |

| `GEARWAVE (Defect Analysis).pptx` | Executive summary and visuals |


---

## Conclusion
This project demonstrates an end-to-end junior data analyst workflow, including
data cleaning, SQL-based analysis, trend evaluation, and translating results into
business-focused insights to support manufacturing quality decisions.
