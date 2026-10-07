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

`planning`  

Contains the planning documents to design and create the database:

- [`hospital_database_erd.drawio`](planning/hospital_database_erd.drawio) – Editable entity relationship diagram.
- [`hospital_database_erd.png`](planning/hospital_database_erd.png) – PNG version of the entity relationship diagram showing tables connections.
- [`pseudocode.txt`](planning/pseudocode.txt) – Pseudocode describing datbase and queries process.

### [`data_files/`](data_files/)

Contains the CSV files imported into MySQL tables:

- [`hospitals.csv`](data_files/hospitals.csv)
- [`doctors.csv`](data_files/doctors.csv)
- [`patients.csv`](data_files/patients.csv)
- [`prescriptions.csv`](data_files/prescriptions.csv)

### [`sql_queries/`](sql_queries/)

Contains the SQL code used to create and query the database:

- [`01_create_database.sql`](sql_queries/01_create_database.sql) – Creates and selects the MySQL database.
- [`02_create_tables.sql`](sql_queries/02_create_tables.sql) – Creates the tables and loads the CSV data.
- [`03_queries_code.sql`](sql_queries/03_queries_code.sql) – Contains the six SQL queries.

### [`database/`](database/)

Contains the final exported MySQL database:

- [`hospital_database.sql`](database/hospital_database.sql) – Database exported using `mysqldump`. 

## Required SQL Queries

1. List doctors at a selected hospital
By identifying a hospital_id, users can retrieve a list of doctors who work at that hospital.

2.  List a patient's prescription by date
By identfying a patient's person_id, users can retrive a list of medications for a particular patient in date order.

3. List all prescriptions issued by a selected doctor
By identifying a doctor's person_id, users can retrieve a list of all prescriptions made by that particular doctor.

4. Add a new patient and assign a doctor
This query will insert a new patient into the database and assign them to a doctor.

5. Identify the doctor with the most prescriptions
This query will retrieve the doctor who has issued the most prescriotions within the database. Prescriptions are counted and grouped by doctor in descedning order. 

6. List doctors at the largest hospital by bed number
Retrieves all doctors located at the largest hospital based on using the MAX() function to identify the  highest bed number.

## How to use the files

To build the database the SQL files need to be run in order.

1. Run `01_create_database.sql`.
2. Run `02_create_tables.sql`.
3. Run `03_queries_code.sql` 

## Testing

Each table was checked to ensure they had the correct fields and once data was uploaded the tables were inspected to ensure the correct number of records were present. 
Each query was run to test the expected results were displayed and crossed checked against orginal data.

For reference, the expected records for each imported CSV are:

- 40 in hospitals
- 100 in doctors
- 600 in patients
- 500 in prescriptions

## Software 

- MySQL
- MobaXterm
- Git and GitHub
- Draw.io


