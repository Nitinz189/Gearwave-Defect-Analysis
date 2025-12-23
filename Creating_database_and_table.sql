CREATE DATABASE defect_analysis;

USE defect_analysis;

CREATE TABLE defects_data (
    defect_id INT PRIMARY KEY,
    product_id INT,
    defect_type VARCHAR(50),
    defect_date DATE,
    defect_location VARCHAR(50),
    severity VARCHAR(20),
    inspection_method VARCHAR(50),
    repair_cost DECIMAL(10,2)
);
