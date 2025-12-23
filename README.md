# Gearwave Defect Analysis

## Project Overview
This project analyzes manufacturing defect data for a fictional bike parts manufacturer, Gearwave.  
The objective is to identify defect trends, cost drivers, and quality risk areas to support production and manufacturing decision-making.

The analysis focuses on understanding where defects occur, which defects are most costly, and how inspection methods impact repair cost and defect severity.

---

## Business Problem
The production and manufacturing teams raised the following questions:

1. How has the defect trend changed over time?
2. Which defect types contribute the most to overall defects?
3. Which defect types are the most expensive to fix?
4. How does defect severity impact repair cost?
5. Which inspection method detects the most critical defects?
6. Are certain defect locations associated with higher severity?
7. Do certain inspection methods lead to lower repair costs?
8. Which products generate the highest number of defects?

---

## Dataset Description
- Time period: Last 6 months  
- Records: 1,000 defect records  
- Data type: Manufacturing quality data  

### Key Columns
- `defect_id` – Unique identifier for each defect  
- `product_id` – Product associated with the defect  
- `defect_type` – Cosmetic, Functional, Structural  
- `defect_description` – Description of the defect  
- `defect_date` – Date the defect was detected  
- `defect_location` – Surface, Internal, Component  
- `severity` – Minor, Moderate, Critical  
- `inspection_method` – Visual, Manual, Automated  
- `repair_action` – Action taken to fix the defect  
- `repair_cost` – Cost incurred to repair the defect  

---

## Tools Used
- Excel – Initial data review and date standardization  
- SQL (PostgreSQL) – Data analysis and aggregation  
- Tableau – Visualization and dashboard creation  

---

## Key Insights

### Defect Trend
- Defect volume decreased by approximately 21% over six months
- Month-to-month fluctuations indicate process stability is not yet consistent

### Defect Types
- Structural and functional defects together account for approximately 69% of total defects
- Defect distribution is relatively balanced, indicating multiple quality issues

### Repair Cost
- Structural defects generate the highest total repair cost due to volume
- Cosmetic defects have a higher average repair cost per defect, indicating intensive rework

### Severity Impact
- Minor defects contribute higher total cost due to frequency
- Critical defects have the highest average repair cost per incident, representing higher risk

### Inspection Methods
- Manual testing detects the highest number of critical defects, likely influenced by inspection volume
- Automated testing shows lower average repair cost and lower share of total repair cost, indicating better cost efficiency through early detection

### Product-Level Analysis
- A small set of products, particularly Product 63 and Product 81, consistently show high defect counts
- These products require targeted root-cause analysis

### Defect Location
- Internal and surface locations show a slightly higher association with critical defects
- Severity risk exists across all locations

---

## Management Recommendations
- Prioritize reduction of structural and functional defects
- Introduce automated testing earlier in the production process
- Perform focused root-cause analysis on high-defect products
- Maintain a balanced inspection strategy combining manual, visual, and automated methods

---

## Conclusion
This analysis demonstrates how defect data can be used to identify quality risks, cost drivers, and improvement opportunities.  
The findings support proactive defect prevention, early detection, and targeted corrective actions to improve overall manufacturing quality and cost efficiency.

---

## Author
Nitin Vishwakarma  
Junior Data Analyst (Project Case Study)
