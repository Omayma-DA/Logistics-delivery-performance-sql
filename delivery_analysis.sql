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


-- 3)Insert sample data
INSERT INTO deliveries VALUES
(1001,'C001','Chicago','FedEx','2025-01-03','2025-01-07','2025-01-08',540,4.2,18.75,'Late'),
(1002,'C002','Columbus','UPS','2025-01-03','2025-01-06','2025-01-05',120,2.0,9.50,'Delivered'),
(1003,'C003','Dallas','USPS','2025-01-04','2025-01-09','2025-01-10',820,6.4,26.90,'Late'),
(1004,'C004','Los Angeles','FedEx','2025-01-04','2025-01-08','2025-01-08',410,3.7,17.20,'Delivered'),
(1005,'C005','Chicago','DHL','2025-01-05','2025-01-09','2025-01-11',980,7.3,32.10,'Late'),
(1006,'C006','Dallas','FedEx','2025-01-05','2025-01-09','2025-01-09',300,4.0,15.60,'Delivered'),
(1007,'C007','Atlanta','USPS','2025-01-05','2025-01-10','2025-01-12',750,5.5,24.80,'Late'),
(1008,'C008','Chicago','DHL','2025-01-06','2025-01-10','2025-01-10',640,6.8,29.50,'Delivered'),
(1009,'C009','New York','FedEX','2025-01-06','2025-01-11','2025-01-11',450,3.9,18.10,'Delivered'),
(1010,'C010','Atlanta','UPS','2025-01-06','2025-01-09','2025-01-08',150,2.3,10.20,'Delivered');

--4)On time VS late deliveries
SELECT status, 
      COUNT(*) AS total_orders
FROM deliveries
GROUP BY status;

--5) % of late deliveries
SELECT 
    ROUND(
        SUM(CASE WHEN status= 'Late' THEN 1 ELSE 0 END)::numeric
          / COUNT(*) * 100,
           2
    ) AS late_percentage
FROM deliveries;

-- 6) Avg shipping cost by carrier
SELECT 
    carrier,
    ROUND(AVG(shipping_cost),2) AS avg_shipping_cost
FROM deliveries
GROUP BY carrier
ORDER BY avg_shipping_cost DESC;

--7) Avg delivery time in days
SELECT
  ROUND(AVG(delivery_date - ship_date),2) AS avg_delivery_days
FROM deliveries;

--8)Late delivery rate by warehouse
SELECT
  warehouse,
  ROUND(
    SUM(CASE WHEN status = 'Late' THEN 1 ELSE 0 END)::numeric
      / COUNT(*) *100,
      2
  ) AS late_rate_percentage
FROM deliveries
GROUP By warehouse
ORDER By late_rate_percentage DESC;
