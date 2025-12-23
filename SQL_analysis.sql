-- How has the defect rate changed over time?
SELECT 
    EXTRACT(MONTH FROM defect_date) AS month,
    COUNT(defect_id) AS total_defects
FROM defects_data
GROUP BY month
ORDER BY month;


-- Which defect types contribute the most to overall defects?

SELECT COUNT(defect_id), defect_type
FROM defects_data
GROUP BY defect_type
order by defect_type DESC


--Which defect types are the most expensive to fix?
SELECT defect_type, SUM(repair_cost) AS total_repair_cost
FROM defects_data
GROUP BY defect_type
ORDER BY total_repair_cost DESC


-- How does defect severity impact repair cost?
SELECT severity, SUM(repair_cost) AS total_repair_cost
FROM defects_data
GROUP BY severity
ORDER BY total_repair_cost DESC


--Which inspection method detects the most critical defects?
SELECT  COUNT(defect_id) AS total_defect ,inspection_method
FROM defects_data
GROUP BY inspection_method
ORDER BY inspection_method DESC


--Are certain defect locations associated with higher severity?
SELECT     
defect_location,
COUNT(defect_id) AS total_defect
FROM defects_data
WHERE severity = 'Critical'
GROUP BY defect_location, severity
ORDER BY total_defect DESC


--Which products generate the highest number of defects?
SELECT product_id, COUNT(defect_id) AS total_defect
FROM defects_data
GROUP BY product_id
ORDER BY total_defect DESC


--Do certain inspection methods lead to lower repair costs?
SELECT COUNT(defect_id) AS total_defect, inspection_method, SUM(repair_cost) AS total_repair_cost
FROM defects_data
GROUP BY inspection_method
ORDER BY total_repair_cost 