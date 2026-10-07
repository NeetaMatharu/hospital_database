# Hospital Database

## Project Overview
HPDM206Z Assignment 1: Developing a hospital database using MySQL

This project involves creating a hospital database in MySQL which stores information about hospitals, doctors, patients and prescriptions.
It's purpose is to organise related data and allow users to retrive specific information using SQL queries.

## Database Structure

The database contains three tables:

### Hospitals

The `hospitals` table stores information about each hospital.

| Field | Data type |
|---|---|
| `hospital_id` | `INT` |
| `name` | `VARCHAR(150)` |
| `address` | `VARCHAR(255)` |
| `size` | `INT` |
| `type` | `VARCHAR(30)` |
| `accreditation_status` | `VARCHAR(30)` |

Primary key: `hospital_id`

### Doctors and Patients

The `doctors_patients` table stores information for both doctors and patients. 
Doctors are connected to the hospitals table via hospital_id. Each patient can only be assigned to one doctor.

| Field | Data type |
|---|---|
| `person_id` | `INT` |
| `name` | `VARCHAR(150)` |
| `date_of_birth` |`DATE` | 
| `address` | `VARCHAR(255)` |
| `role` | `VARCHAR(20`| 
| `hospital_id` | `INT` |
| `doctor_id` | `INT` |

Primary Key: `person_id`
Foreign Key: `hospital_id`

### Prescriptions

The `prescriptions` table stores information about prescriptions.
Patient and doctor prescriptions are connected via patient_id and doctor_id.

| Field | Data type |
|---|---|
| `prescription_id` | `INT` |
| `patient_id` | `INT` |
| `doctor_id` |`INT` |
| `medication` | `VARCHAR(100)` |
| `prescription_date` | `DATE`|

Primary Key: `prescription_id`

## Database Relationships

The three tables are connected through relationship entities.

- One hospital can have many docotors.
- One docotor can have many patients.
- One patient can only have one doctor.
- One patient can have many prescriptions.
- One doctor can make many prescriptions.

The database relationships are provided in the entity relationship diagram in the `planning` folder.

## Repository Structure

### [`planning/`](planning/) 

Contains the planning documents to design and create the database:

- [`hospital_database_erd.drawio`](planning/hospital_database_erd.drawio) – Editable entity relationship diagram.
- [`hospital_database_erd.png`](planning/hospital_database_erd.png) – PNG version of the entity relationship diagram showing tables connections.
- [`pseudocode.txt`](planning/pseudocode.txt) – Pseudocode describing datbase and queries process.

- 

