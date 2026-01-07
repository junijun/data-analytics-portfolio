# Inventory & Demand Analysis (Python)

## Overview
This project analyzes warehouse inventory and demand patterns to identify **stockout risks**, **inventory inefficiencies**, and **opportunities for improvement**.  
Using Python-based exploratory analysis and KPI calculation, the project demonstrates how data analytics supports **operational and supply chain decision-making**.

The analysis is designed to resemble a real-world warehouse scenario with multiple SKUs, variable demand, and replenishment lead times.

---

## Business Objectives
- Understand demand behavior across SKUs and over time  
- Identify products with elevated stockout risk  
- Evaluate inventory performance using key operational KPIs  
- Support data-driven decisions for inventory planning and replenishment  

---

## Dataset Description
The dataset represents daily warehouse operations and includes:
- **Date** – Daily observation  
- **SKU** – Product identifier  
- **Demand** – Daily customer demand  
- **Inventory Level** – Available stock after demand fulfillment  
- **Stockout Indicator** – Whether demand could not be fully satisfied  
- **Lead Time (days)** – Replenishment delay  

> The dataset is synthetically generated to simulate realistic inventory behavior.

---

## Analysis Steps
1. **Data Loading & Preparation**  
   Import data and validate structure and data quality.

2. **Exploratory Data Analysis (EDA)**  
   - Demand distribution per SKU  
   - Inventory level trends over time  
   - Identification of stockout occurrences  

3. **Inventory KPIs**  
   - Average inventory level  
   - Stockout rate  
   - Demand variability per SKU  

4. **Visualization**  
   - Time-series inventory trends  
   - SKU-level comparisons to highlight operational differences  

---

## Key Business Insights
- Demand patterns differ significantly across SKUs, reinforcing the need for **SKU-level inventory policies** rather than aggregated planning.  
- Certain SKUs experience **higher demand variability**, increasing stockout risk without adequate safety stock.  
- Persistent low inventory levels correlate with repeated stockouts, indicating **replenishment timing or quantity issues**.  
- Inventory trends over time reveal periods of potential overstocking and understocking, highlighting optimization opportunities.  

---

## Why This Matters
This type of analysis helps organizations:
- Reduce service level failures caused by stockouts  
- Improve inventory availability while controlling holding costs  
- Support proactive replenishment and capacity planning  
- Align operational decisions with data rather than intuition  

---

## Tools & Technologies
- **Python**  
- **pandas, NumPy**  
- **Matplotlib**  
- **Jupyter Notebook**  

---

## Outputs
- Exploratory analysis notebook (`inventory_analysis.ipynb`)  
- Shareable HTML report (`inventory_analysis.html`)  
- Actionable inventory KPIs and visual insights  

---

## Next Steps (Possible Extensions)
- Integrate forecasting models for demand prediction  
- Add cost-based inventory optimization  
- Extend analysis to multi-warehouse or multi-echelon scenarios  
