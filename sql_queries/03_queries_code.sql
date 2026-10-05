-- Six queries required for database

-- Doctors location

SELECT hospitals.name, doctors_patients.person_id, doctors_patients.name
FROM hospitals
INNER JOIN doctors_patients
ON hospitals.hospital_id = doctors_patients.hospital_id
WHERE hsopitals.id = 12;


-- Patient prescriptions by date

SELECT prescriptions.prescription_id, prescriptions.medication, prescriptions.prescription_date, doctors_patients.person_id, doctors_patients.name
FROM prescriptions
INNER JOIN doctors_patients
ON prescriptions.patient_id = doctors_prescriptions.person_id
WHERE doctors_patients.person_id = 554
ORDER BY prescriptions.prescription_date;

-- All prescription by doctor 

SELECT prescriptions.prescription_id, prescriptions.medication, doctors_patients.person_id, doctors_patients.name 
FROM prescriptions 
INNER JOIN doctors_patients 
ON prescriptions.doctor_id = doctors_patients.person_id 
WHERE doctors_patients.person_id = 20 
AND doctors_patients.role = 'Doctor';
