-- =========================================
-- Smart City Energy Analysis SQL File
-- Table Name: SmartCityEnergy
-- =========================================

-- 1. Total and Average Energy Consumption by Zone
SELECT city_zone,
SUM(energy_consumpti) AS total_energy,
AVG(energy_consumpti) AS avg_energy
FROM SmartCityEnergy
GROUP BY city_zone;

---

-- 2. Top 5 Highest Energy Consumers
SELECT city_zone,
energy_consumpti
FROM SmartCityEnergy
ORDER BY energy_consumpti DESC
LIMIT 5;

---

-- 3. Monthly Energy Consumption Trend
SELECT strftime('%m', timestamp) AS month,
city_zone,
SUM(energy_consumpti) AS total_energy
FROM SmartCityEnergy
GROUP BY month, city_zone
ORDER BY month;

---

-- 4. Average Cost per Zone (Assuming Rate = 5)
SELECT city_zone,
AVG(energy_consumpti * 5) AS avg_cost
FROM SmartCityEnergy
GROUP BY city_zone;

---

-- 5. Outage Approximation by Zone
SELECT city_zone,
COUNT(*) AS outage_cases
FROM SmartCityEnergy
GROUP BY city_zone
ORDER BY outage_cases DESC;

---

-- 6. Least Efficient Zones (High Energy Usage)
SELECT city_zone,
AVG(energy_consumpti) AS avg_usage
FROM SmartCityEnergy
GROUP BY city_zone
ORDER BY avg_usage DESC;

---

-- 7. Weekday vs Weekend Energy Usage
SELECT
CASE
WHEN strftime('%w', timestamp) IN ('0','6') THEN 'Weekend'
ELSE 'Weekday'
END AS day_type,
AVG(energy_consumpti) AS avg_usage
FROM SmartCityEnergy
GROUP BY day_type;

---

-- 8. Renewable Energy Percentage by Zone (Bonus)
SELECT city_zone,
SUM(renewable_energy) AS renewable_energy,
SUM(energy_consumpti) AS total_energy,
(SUM(renewable_energy) * 100.0 / SUM(energy_consumpti)) AS renewable_percentage
FROM SmartCityEnergy
GROUP BY city_zone;

-- =========================================
-- END OF FILE
-- =========================================
