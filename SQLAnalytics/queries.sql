-- Preview data
SELECT * FROM inventory LIMIT 5;

-- Stockout rate (%) per SKU
SELECT
  sku,
  ROUND(AVG(stockout) * 100, 2) AS stockout_rate_pct
FROM inventory
GROUP BY sku
ORDER BY stockout_rate_pct DESC;

-- Average demand per SKU
SELECT
  sku,
  ROUND(AVG(demand), 2) AS avg_demand
FROM inventory
GROUP BY sku;

-- Demand variance per SKU
SELECT
  sku,
  ROUND(AVG(demand * demand) - AVG(demand) * AVG(demand), 2) AS demand_variance
FROM inventory
GROUP BY sku;

-- Days with zero inventory
SELECT
  sku,
  SUM(CASE WHEN inventory_level = 0 THEN 1 ELSE 0 END) AS zero_inventory_days
FROM inventory
GROUP BY sku;

-- Top 10 highest-demand days
SELECT date, sku, demand
FROM inventory
ORDER BY demand DESC
LIMIT 10;

-- Monthly demand trend
SELECT
  substr(date, 1, 7) AS month,
  sku,
  SUM(demand) AS total_demand
FROM inventory
GROUP BY month, sku
ORDER BY month, sku;

-- Average lead time per SKU
SELECT
  sku,
  ROUND(AVG(lead_time_days), 2) AS avg_lead_time_days
FROM inventory
GROUP BY sku;

-- Inventory health snapshot
SELECT
  sku,
  ROUND(AVG(inventory_level), 2) AS avg_inventory,
  MIN(inventory_level) AS min_inventory
FROM inventory
GROUP BY sku;
