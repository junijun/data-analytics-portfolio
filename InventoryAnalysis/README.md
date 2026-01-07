# Inventory Analysis – Warehouse Demand & Stockout Risk

## 📌 Project Overview
This project analyzes **warehouse inventory and demand behavior** to identify **stockout risks**, demand variability, and opportunities to improve inventory management decisions.

The analysis simulates daily demand and inventory levels for multiple SKUs and demonstrates how data analytics can support **operational decision-making** in supply chain and logistics environments.

---

## 🎯 Business Objectives
- Understand **demand patterns** for different SKUs
- Identify **stockout frequency and risk**
- Evaluate **inventory performance KPIs**
- Provide **data-driven insights** to support inventory planning

---

## 📊 Dataset Description
The dataset represents simulated daily warehouse operations and includes:
- `date` – transaction date  
- `sku` – product identifier  
- `demand` – daily customer demand  
- `inventory_level` – remaining stock after demand fulfillment  
- `stockout` – indicator of inventory depletion (1 = stockout)  
- `lead_time_days` – replenishment lead time  

The dataset structure reflects typical data available in **warehouse management systems (WMS)**.

---

## 🔍 Key Analysis Steps

### 1️⃣ Data Cleaning & Validation
- Checked for missing values and data consistency
- Verified correct data types for numerical and categorical variables
- Ensured dataset readiness for analysis

### 2️⃣ Exploratory Data Analysis (EDA)
- Analyzed demand distribution across SKUs
- Evaluated demand variability to understand uncertainty
- Compared SKU-level demand behavior

### 3️⃣ Inventory KPIs
Calculated key performance indicators, including:
- **Stockout rate (%)** – frequency of inventory depletion
- **Average inventory level** – typical stock on hand
- **Demand variability (standard deviation)** – indicator of uncertainty

### 4️⃣ Visualization
- Time-series visualization of inventory levels per SKU
- Identification of inventory depletion trends over time

---

## 📈 Key Findings & Business Insights
- Demand variability differs across SKUs, indicating **different inventory risk profiles**
- High stockout rates suggest **insufficient safety stock** or delayed replenishment
- Inventory depletion patterns highlight the importance of **lead time consideration**
- Certain SKUs require **higher safety stock levels** to maintain service levels

---

## 💡 Recommendations
Based on the analysis:
- Adjust **safety stock levels** for SKUs with higher demand variability
- Monitor **stockout rate** as a key operational KPI
- Incorporate **lead time variability** into inventory planning
- Use analytics-driven monitoring to proactively manage inventory risks

---

## 🛠️ Tools & Technologies
- Python (Pandas, NumPy)
- Matplotlib (visualization)
- Jupyter Notebook
- Git & GitHub

---

## 📂 Files
- `notebooks/inventory_analysis.ipynb` – full analysis notebook
- `notebooks/inventory_analysis_report.html` – exported analysis report

---

## 📌 Notes
This project is intended as a **portfolio demonstration** of analytics skills applied to supply chain and inventory management scenarios.