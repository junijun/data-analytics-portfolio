# 📊 SQL Analytics – Inventory & Demand KPIs

## Project Overview
This project demonstrates the use of **SQL for analytical querying and KPI calculation**
using warehouse inventory and demand data.

A lightweight **SQLite database** is used to simulate a realistic analytics environment
where SQL supports **operational analysis and business decision-making** in a supply
chain context.

The project focuses on translating raw operational data into **actionable inventory insights**.

---

## Business Objectives
- Calculate **inventory and demand KPIs** using SQL  
- Analyze **stockout risk** and inventory availability  
- Identify SKU-level demand patterns and operational issues  
- Demonstrate SQL skills relevant to **data analytics and analytics engineering roles**

---

## Dataset
The dataset represents daily warehouse operations and includes:

- `date` – transaction date  
- `sku` – product identifier  
- `demand` – daily customer demand  
- `inventory_level` – available inventory after demand  
- `stockout` – stockout indicator (1 = stockout)  
- `lead_time_days` – replenishment lead time  

The data is stored in a local **SQLite database**:


---

## Key SQL Analyses
The following analyses are performed using SQL queries:

- **Stockout rate (%) per SKU**
- **Average demand per SKU**
- **Demand variability** (variance and distribution)
- **Days with zero inventory**
- **High-demand days**
- **Monthly demand trends**
- **Average replenishment lead time**
- **Inventory health indicators** (average and minimum stock levels)

Each query uses standard SQL constructs such as:
- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- Aggregate functions (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`)

---

## Business Insights
- Demand varies significantly across SKUs, reinforcing the need for **SKU-level inventory monitoring**.
- Certain products experience **higher stockout frequency**, indicating potential issues in replenishment timing or safety stock.
- Monthly demand aggregation supports **capacity planning and forecasting discussions**.
- Inventory level patterns highlight opportunities to **reduce overstock while maintaining service levels**.

---

## Tools & Technologies
- **SQL (SQLite)**
- **Python** (`pandas`, `sqlite3`)
- **Jupyter Notebook**
- **Git & GitHub**

---

## Project Files
- `notebooks/sql_analytics.ipynb` – SQL analysis notebook  
- `data/sql_analytics.db` – SQLite database  
- `queries.sql` – standalone SQL queries  

---

## Notes
This project is part of a **data analytics portfolio** and emphasizes:
- Clear, readable SQL
- Business-oriented KPIs
- Analytical thinking over database administration or performance tuning
