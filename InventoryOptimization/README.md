# Inventory Optimization: Scenario Analysis (Service Level vs Inventory)

## Overview
This project evaluates inventory policy scenarios using demand history to compare
service performance against inventory levels. It demonstrates how analytics can support inventory decisions in warehouse and supply chain operations.

## Objective
- Compare safety stock scenarios and quantify the trade-off between:
  - Stockout risk / service (fill rate)
  - Average inventory (holding cost proxy)

## Method
A simple (s, S) inventory policy is simulated per SKU:
- Reorder when inventory position ≤ reorder point (ROP)
- Orders arrive after lead time
- Scenarios vary the safety factor *k* in the ROP calculation

## Outputs
- Scenario KPI table per SKU (stockout rate, fill rate, average inventory, orders)
- Trade-off visualization: stockout rate vs average inventory

## Tools
Python, pandas, NumPy, Matplotlib, Jupyter Notebook

## Key Business Takeaways

This analysis demonstrates how inventory decisions directly impact service performance and cost:

- Increasing safety stock improves service level but leads to higher average inventory and holding cost.
- The relationship between inventory and service level is nonlinear beyond a certain point, additional stock yields diminishing service improvements.
- Different SKUs require different inventory strategies:
  - High-variability SKUs benefit more from safety stock buffers.
  - Stable-demand SKUs may be overstocked and offer cost-reduction opportunities.

## Why This Matters

This type of scenario analysis supports:
- Data-driven inventory policy design
- Service-level target setting
- Trade-off discussions between operations, finance, and supply chain teams

The approach can be extended with real demand forecasts, cost parameters, and multi-echelon inventory models.

This project highlights the role of analytical scenario evaluation in balancing service performance and cost efficiency.
