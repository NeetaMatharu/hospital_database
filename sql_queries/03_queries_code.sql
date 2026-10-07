-- Six queries required for database

-- List doctors at a selected hospital

SELECT hospitals.name, doctors_patients.person_id, doctors_patients.name
FROM hospitals
INNER JOIN doctors_patients
ON hospitals.hospital_id = doctors_patients.hospital_id
WHERE hospitals.hospital_id = 12;


-- List a patient's prescriptions by date

SELECT prescriptions.prescription_id, prescriptions.medication, prescriptions.prescription_date, doctors_patients.person_id, doctors_patients.name
FROM prescriptions
INNER JOIN doctors_patients
ON prescriptions.patient_id = doctors_patients.person_id
WHERE doctors_patients.person_id = 554
AND doctors_patients.role = 'Patient'
ORDER BY prescriptions.prescription_date;

-- List all prescriptions issued by a selected doctor

SELECT prescriptions.prescription_id, prescriptions.medication, doctors_patients.person_id, doctors_patients.name 
FROM prescriptions 
INNER JOIN doctors_patients 
ON prescriptions.doctor_id = doctors_patients.person_id 
WHERE doctors_patients.person_id = 20 
AND doctors_patients.role = 'Doctor';

-- Add a new patient and assign a doctor

INSERT INTO doctors_patients
       (name, date_of_birth, address, role, doctor_id)
VALUES ('Jon Smith',
        '1999-10-16',
        '12 Fun Street, NJ 90210',
        'Patient',
        53);

-- Identify the doctor with the most prescriptions issued

SELECT doctors_patients.person_id, doctors_patients.name, COUNT(prescriptions.prescription_id)
FROM prescriptions
INNER JOIN doctors_patients
ON prescriptions.doctor_id = doctors_patients.person_id
WHERE doctors_patients.role = 'Doctor'
GROUP BY doctors_patients.person_id, doctors_patients.name
ORDER BY COUNT(prescriptions.prescription_id) DESC
LIMIT 1;

-- List doctors at the largest hospital by bed number

SELECT hospitals.hospital_id, hospitals.name, hospitals.size, doctors_patients.person_id, doctors_patients.name
FROM hospitals
INNER JOIN doctors_patients
ON hospitals.hospital_id = doctors_patients.hospital_id
WHERE hospitals.size = (SELECT MAX(size) FROM hospitals)
AND doctors_patients.role = 'Doctor';

