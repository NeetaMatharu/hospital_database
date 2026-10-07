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
