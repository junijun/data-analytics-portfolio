# 📈 Inventory Optimization: Scenario Analysis (Service Level vs Inventory)

## Overview
This project evaluates inventory policy scenarios using historical demand data to compare
**service performance** against **inventory levels**.  
It demonstrates how analytical scenario analysis can support **inventory optimization decisions**
in warehouse and supply chain operations.

The focus is on understanding the trade-off between **service level improvement** and **inventory holding cost**.

---

## Business Objective
- Compare safety stock scenarios and quantify the trade-off between:
  - **Stockout risk / service performance** (fill rate)
  - **Average inventory level** (holding cost proxy)
- Support data-driven inventory policy selection at the SKU level

---

## Methodology
A simplified **(s, S) inventory policy** is simulated independently for each SKU:

- Reorder occurs when inventory position ≤ **reorder point (ROP)**
- Orders arrive after a stochastic **lead time**
- Multiple scenarios are evaluated by varying the **safety factor (k)** used in the ROP calculation

This allows comparison of inventory performance under different service-level targets.

---

## Outputs
- Scenario KPI table per SKU, including:
  - Stockout rate
  - Fill rate (service level)
  - Average on-hand inventory
  - Number of replenishment orders
- Trade-off visualization:
  - **Stockout rate vs. average inventory** for each SKU

---

## Key Business Insights
This analysis highlights how inventory decisions directly impact both service performance and cost:

- Increasing safety stock generally **reduces stockout risk** and improves service levels.
- The relationship between inventory and service level is **nonlinear** — beyond a certain point,
  additional inventory yields **diminishing service improvements**.
- Inventory strategies should be **SKU-specific**:
  - High-variability SKUs benefit more from safety stock buffers.
  - Stable-demand SKUs may be overstocked, presenting **cost-reduction opportunities**.

---

## Why This Matters
This type of scenario analysis supports:
- Data-driven **inventory policy design**
- Service-level target setting
- Structured trade-off discussions between **operations, finance, and supply chain teams**
- Risk-aware decision-making under demand uncertainty

---

## Tools & Technologies
- **Python**
- **pandas, NumPy**
- **Matplotlib**
- **Jupyter Notebook**

---

## Extensions & Next Steps
This approach can be extended by:
- Incorporating demand forecasting models
- Adding explicit holding and stockout cost parameters
- Evaluating multi-echelon or multi-warehouse inventory structures

---

This project demonstrates how **analytical scenario evaluation** helps balance
**service performance** and **cost efficiency** in inventory management.
