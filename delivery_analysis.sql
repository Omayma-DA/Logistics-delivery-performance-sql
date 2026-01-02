-- Logitics Delivery Performance Analysis
-- Author: Omayma Chadli
-- Dataset: deliveries.csv
-- Purpose: Analyze late deliveries and performance patterns

-- 1)View all records
SELECT * FROM deliveries;

-- 2)Create table structure
CREATE TABLE deliveries(
  order_id INT,
  customer_id VARCHAR(20),
  warehouse VARCHAR(50),
  carrier VARCHAR(50),
  ship_date DATE,
  planned_delivery_date DATE,
  delivery_date DATE,
  distance_km INT,
  weight_kg DECIMAL(5,2),
  shipping_cost DECIMAL(10,2),
  status VARCHAR(20)
);
