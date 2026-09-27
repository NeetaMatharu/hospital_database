
-- Create the hospitals table

USE hospital_database

CREATE TABLE hospitals
(
    hospital_id INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    address VARCHAR(255) NOT NULL,
    size INT NOT NULL CHECK (size > 0),
    type VARCHAR(30) NOT NULL,
    accreditation_status VARCHAR(30) NOT NULL,
    PRIMARY KEY (hospital_id)
);

-- Check table has been created

SHOW TABLES;

-- Check information on columns is correct

DESCRIBE hospitals;

-- Load data from hospitals.csv

LOAD DATA LOCAL INFILE "/home/ubuntu/hospital_database/data_files/hospitals.csv" INTO TABLE hospitals FIELDS TERMINATED BY ',' IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status);


