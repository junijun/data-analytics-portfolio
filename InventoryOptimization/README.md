# Inventory Optimization (Scenario-Based Policy Evaluation)

## Overview
This project extends the Inventory & Demand Analysis (Project 1) by evaluating alternative replenishment policy scenarios and quantifying the trade-off between service level and inventory investment.

Using a simulated warehouse dataset with multiple SKUs, variable demand, and replenishment lead times, the notebook compares a baseline reorder policy against improved policies with higher buffer coverage (`cover_days`).

## Business Objective
- Improve inventory availability and reduce stockouts
- Reduce lost sales impact (units and monetary value)
- Understand the trade-off between higher service level and higher inventory value
- Recommend SKU-level replenishment policies based on data-driven scenario comparison

## Baseline Policy (Reference)
The baseline benchmark is taken from Project 1:
- Reorder Point (ROP) and Order-up-to policy with lead time
- Baseline buffer coverage: `cover_days = 7`

## Optimization Strategy
Instead of applying one policy to all SKUs, this project tests improved buffer scenarios and evaluates performance differences.

### Scenarios Tested
- Scenario A (Balanced Policy): `cover_days = 10`
- Scenario B (High Service Policy): `cover_days = 14`

Higher cover_days increases the order-up-to level, which generally improves service performance but increases average inventory value.

## Evaluation Metrics
Each scenario is compared using the same KPI framework as Project 1:

Service performance:
- Fill rate = filled_demand / total_demand
- Stockout rate = stockout_days / days

Business impact:
- Lost sales value (€)

Inventory investment proxy:
- Average inventory value (€)

Scenario performance is evaluated using delta metrics relative to the baseline policy:
- fill_rate_delta
- lost_sales_value_delta
- avg_inventory_value_delta

## Key Outputs
- Baseline KPI benchmark table per SKU
- Scenario KPI comparison (Baseline vs Scenario A vs Scenario B)
- Improvement vs baseline (delta) analysis
- Trade-off visualization (service level vs inventory investment)
- Final recommendation table per SKU based on scenario performance

## Key Findings
- Increasing buffer coverage improves fill rate and reduces lost sales value across SKUs.
- Higher service levels require higher inventory investment (higher average inventory value).
- The recommended scenario differs by SKU, supporting SKU-level policies rather than one global setting.

## Tools & Technologies
- Python
- pandas, NumPy
- Matplotlib
- Jupyter Notebook

## Project Files
- `notebooks/inventory_optimization_scenarios.ipynb` — scenario simulation, KPI comparison, and recommendation analysis

## Next Steps (Possible Extensions)
- Add holding cost, ordering cost, and total cost comparison per scenario
- Introduce service level targets by SKU category (e.g., Fast Movers vs Slow Movers)
- Extend evaluation to multi-warehouse or multi-echelon inventory models
- Use forecasting-driven demand inputs instead of fixed base demand
