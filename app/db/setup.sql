DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS timesheets;

-- Create employees table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NULL,
    email TEXT NOT NULL UNIQUE,            -- Unique email for each employee
    phone_number TEXT,                     -- Optional phone number
    hire_date DATE NOT NULL,               -- Date of hire
    job_title TEXT,                        -- Employee's job title
    department TEXT,                       -- Department the employee belongs to
    salary INTEGER,                        -- Employee's salary (numeric)
    date_of_birth DATE,                    -- Employee's date of birth
    address TEXT                           -- Employee's address (optional)
);

-- Create timesheets table
CREATE TABLE timesheets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_time DATETIME NOT NULL,          -- Start time of the timesheet
    end_time DATETIME NOT NULL,            -- End time of the timesheet
    employee_id INTEGER NOT NULL,          -- ID of the employee from the employees table
    hours_worked REAL NOT NULL,            -- Number of hours worked in the shift
    project_name TEXT,                     -- Optional project or task worked on
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- This file contains the SQL schema, it drops all tables and recreates them

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS timesheets;

-- To add a field to a table do
-- CREATE TABLE table_name (
--     id INTEGER PRIMARY KEY AUTOINCREMENT,
--     nullable_field TEXT,
--     non_nullable_field TEXT NOT NULL,
--     numeric_field INTEGER,
--     unique_field TEXT UNIQUE,
--     unique_non_nullable_field TEXT NOT NULL UNIQUE,
--     date_field DATE,
--     datetime_field DATETIME
-- );

-- Create employees table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NULL
    -- Rest of the fields
);

-- Create timesheets table
CREATE TABLE timesheets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    -- Rest of the fields
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    employee_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);
