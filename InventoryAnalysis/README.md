## Inventory & Demand Analysis (Python)

### Overview
This project analyzes warehouse inventory and demand patterns to identify stockout risks, inventory inefficiencies, and opportunities for improvement.  
Using Python-based exploratory analysis and KPI calculation, the project demonstrates how analytics supports operational and supply chain decision-making.

The analysis is designed to resemble a real-world warehouse scenario with multiple SKUs, variable demand, and replenishment orders arriving after supplier lead time.

---

### Business Objectives
- Understand demand behavior across SKUs and over time
- Identify products with elevated stockout risk and service-level impact
- Evaluate inventory performance using key warehouse KPIs
- Support data-driven decisions for inventory planning and replenishment policies

---

### Dataset Description
The dataset represents daily warehouse operations and includes both operational activity and replenishment signals.

Daily operational variables:
- Date – daily observation
- SKU – product identifier
- Demand – daily customer demand
- Filled Demand – units successfully delivered from available stock
- Lost Sales – unfulfilled demand due to insufficient inventory (no backorders)
- Inventory Level – on-hand stock after demand fulfillment
- Stockout Indicator – whether demand could not be fully satisfied (`lost_sales > 0`)

Replenishment and planning variables:
- Lead Time (days) – replenishment delay
- Order Quantity – replenishment order placed
- Receipts – inbound replenishment received
- On Order – outstanding quantity in open purchase orders
- Inventory Position – on-hand + on-order inventory
- ROP / Order-up-to levels – simplified replenishment policy parameters used in simulation

The dataset is synthetically generated to simulate realistic warehouse behavior (demand variability, lead time variability, MOQ constraints, and replenishment timing effects).

---

### Analysis Steps

1. Data Loading & Preparation
   - Import data
   - Validate structure and data quality
   - Ensure correct data types and sorting (SKU + time-series order)

2. Simulation Validation (Quick Checks)
   - No duplicate SKU-day records
   - No missing values in key fields
   - Inventory never becomes negative
   - Stockout logic consistency (`stockout = 1 ⇔ lost_sales > 0`)
   - Replenishment flow validation (orders placed and receipts arriving after lead time)

3. Exploratory Data Analysis (EDA)
   - Demand distribution per SKU
   - Inventory level trends over time
   - Identification of stockout occurrences
   - Receipts and ordering patterns

4. Inventory KPIs (Warehouse Metrics)
   - Average inventory level
   - Stockout rate / stockout days
   - Demand variability per SKU
   - Fill rate (service level proxy):  
     `fill_rate = Σ filled_demand / Σ demand`

5. Visualization
   - Time-series inventory trends
   - SKU-level comparison plots to highlight operational differences
   - Replenishment behavior over time (receipts vs inventory vs stockouts)

---

### Key Business Insights
- Demand patterns differ significantly across SKUs, reinforcing the need for SKU-level inventory policies rather than aggregated planning.
- Certain SKUs show higher demand variability, increasing stockout risk without adequate inventory buffers.
- Stockouts are strongly linked to replenishment behavior (lead time and order timing), showing the value of planning based on inventory position rather than only on-hand stock.
- Inventory trends over time reveal periods of understocking and overstocking, highlighting optimization opportunities.

---

### Why This Matters
This type of analysis helps organizations:
- Reduce service level failures caused by stockouts
- Improve inventory availability while controlling holding costs
- Support proactive replenishment and capacity planning
- Align operational decisions with data rather than intuition

---

### Tools & Technologies
- Python
- pandas, NumPy
- Matplotlib
- Jupyter Notebook

---

### Key Outputs
- Demand patterns and trends per SKU (daily + 7-day moving average)
- Inventory level behavior over time with stockout events highlighted
- Replenishment behavior (receipts vs inventory level)
- KPI summary per SKU: fill rate, stockout days/rate, average inventory, lost sales
- Value-based KPIs: lost sales value and average inventory value

---

### Recommendations (Bridge to Inventory Optimization)
This analysis establishes a baseline reorder policy (ROP + order-up-to with lead time).  
Based on observed stockouts and lost sales value, the next step is to evaluate alternative policies and quantify trade-offs between service level and inventory investment in the InventoryOptimization module.

