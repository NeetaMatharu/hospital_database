
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

LOAD DATA LOCAL INFILE '/home/ubuntu/hospital_database/data_files/hospitals.csv' INTO TABLE hospitals FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (hospital_id, name, address, size, type, accreditation_status);

-- Check the data

SELECT * FROM hospitals;

-- Create the doctors_patients table

CREATE TABLES doctors_patients
(
    person_id INT unsigned NOT NULL AUTO INCREMENT,
    name VARCHAR(150) NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL,
    hospital_id INTL,
    doctor_id INT,
    PRIMARY KEY (person_id),
    FOREIGN KEY (hospital_id),
	REFERENCES hospitals(hospital_id)
);

-- Check table has been created

SHOW TABLES;

-- Check information on columns is correct

DESCRIBE doctors_patients;

-- Load data from doctors.csv

LOAD DATA LOCAL INFILE '/home/ubuntu/hospital_database/data_files/doctors.csv' INTO TABLE doctors_patients FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (person_id, name, date_of_birth, address, role, hospital_id);

-- Check the data

SELECT * FROM doctors_patients

-- Create the prescriptions table

CREATE TABLE prescriptions
(
    prescription_id INT NOT NULL,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    medication VARCHAR(100) NOT NULL,
    prescription_date DATE NOT NULL,
    PRIMARY KEY (prescription_id)
);

-- Check table has been created

SHOW TABLES;

-- CHeck information on columns is correct

DESCRIBE prescriptions;

-- Load data from prescriptions.csv

LOAD DATA LOCAL INFILE '/home/ubuntu/hospital_database/data_files/prescriptions.csv' INTO TABLE prescriptions FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' IGNORE 1 LINES (prescription_id, patient_id, doctor_id, medication, prescription_date):

-- Check the data

SELECT * FROM prescriptions;

