# Inventory Optimization: Scenario Analysis (Service Level vs Inventory)

## Overview
This project evaluates inventory policy scenarios using demand history to compare
service performance against inventory levels. It demonstrates how analytics supports
inventory decisions in warehouse and supply chain operations.

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
