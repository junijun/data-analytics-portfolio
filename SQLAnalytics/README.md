# SQL Analytics – Inventory & Demand KPIs

## Project Overview
This project demonstrates the use of **SQL for analytical querying and KPI calculation**
using warehouse inventory and demand data.

A lightweight **SQLite database** is used to simulate a realistic analytics environment
where SQL is applied to support **operational and business decision-making**.

---

## Business Objectives
- Calculate **inventory and demand KPIs** using SQL
- Analyze **stockout risk** and inventory availability
- Support data-driven insights for supply chain operations
- Demonstrate SQL skills relevant to analytics engineering roles

---

## Dataset
The dataset represents daily warehouse operations and includes:
- `date`
- `sku`
- `demand`
- `inventory_level`
- `stockout`
- `lead_time_days`

The data is stored in a local SQLite database (`sql_analytics.db`).

---

## Key SQL Analyses

The following analyses are performed using SQL queries:

- Stockout rate (%) per SKU
- Average demand per SKU
- Demand variability (variance)
- Days with zero inventory
- High-demand days
- Monthly demand trends
- Average replenishment lead time
- Inventory health indicators (average and minimum stock)

Each query is written using standard SQL constructs such as:
`SELECT`, `WHERE`, `GROUP BY`, `ORDER BY`, and aggregation functions.

---

## Tools & Technologies
- SQL (SQLite)
- Python (pandas, sqlite3)
- Jupyter Notebook
- Git & GitHub

---

## Files
- `notebooks/sql_analytics.ipynb` – SQL analysis notebook
- `data/sql_analytics.db` – SQLite database
- `queries.sql` – standalone SQL queries

---

## Notes
This project is part of a data analytics portfolio and focuses on **clear, readable SQL**
rather than database administration or optimization.
