-- This file contains the SQL schema, it drops all tables and recreates them


DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS timesheets;
CREATE TABLE employees (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NULL
    -- Rest of the fields
);
CREATE TABLE timesheets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    employee_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);
CREATE TABLE table_name (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nullable_field TEXT,
    non_nullable_field TEXT NOT NULL,
    numeric_field INTEGER,
    unique_field TEXT UNIQUE,
    unique_non_nullable_field TEXT NOT NULL UNIQUE,
    date_field DATE,
    datetime_field DATETIME
);
