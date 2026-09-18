CREATE DATABASE IF NOT EXISTS erp_db;

USE erp_db;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,

    employee_id VARCHAR(30) UNIQUE NOT NULL,

    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),

    email VARCHAR(150),
    phone VARCHAR(30),

    date_of_birth DATE,
    gender VARCHAR(30),

    department VARCHAR(100),
    designation VARCHAR(150),

    employment_type VARCHAR(50),
    joining_date DATE,

    manager_name VARCHAR(150),

    address TEXT,
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),

    emergency_contact_name VARCHAR(150),
    emergency_contact_phone VARCHAR(30),

    basic_salary DECIMAL(12,2),
    allowances DECIMAL(12,2),
    deductions DECIMAL(12,2),

    profile_image VARCHAR(255),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO employees
(
    employee_id,
    first_name,
    last_name,
    email,
    phone,
    date_of_birth,
    gender,
    department,
    designation,
    employment_type,
    joining_date,
    manager_name,
    address,
    city,
    state,
    country,
    emergency_contact_name,
    emergency_contact_phone,
    basic_salary,
    allowances,
    deductions
)
VALUES
(
    'EMP001',
    'Ravi',
    'Kumar',
    'ravi@erpsoftware.com',
    '9876543210',
    '1995-05-15',
    'Male',
    'Information Technology',
    'Senior Software Engineer',
    'Full Time',
    '2022-01-10',
    'Rajesh Manager',
    'Madhapur',
    'Hyderabad',
    'Telangana',
    'India',
    'Suresh Kumar',
    '9876500001',
    65000,
    10000,
    5000
);

INSERT INTO employees
(
    employee_id,
    first_name,
    last_name,
    email,
    phone,
    date_of_birth,
    gender,
    department,
    designation,
    employment_type,
    joining_date,
    manager_name,
    address,
    city,
    state,
    country,
    emergency_contact_name,
    emergency_contact_phone,
    basic_salary,
    allowances,
    deductions
)
VALUES
(
    'EMP002',
    'Priya',
    'Sharma',
    'priya@erpsoftware.com',
    '9876543211',
    '1997-08-20',
    'Female',
    'Human Resources',
    'HR Manager',
    'Full Time',
    '2021-06-15',
    'Managing Director',
    'Hitech City',
    'Hyderabad',
    'Telangana',
    'India',
    'Anita Sharma',
    '9876500002',
    70000,
    12000,
    6000
);

INSERT INTO employees
(
    employee_id,
    first_name,
    last_name,
    email,
    phone,
    date_of_birth,
    gender,
    department,
    designation,
    employment_type,
    joining_date,
    manager_name,
    address,
    city,
    state,
    country,
    emergency_contact_name,
    emergency_contact_phone,
    basic_salary,
    allowances,
    deductions
)
VALUES
(
    'EMP003',
    'Arun',
    'Reddy',
    'arun@erpsoftware.com',
    '9876543212',
    '1996-11-10',
    'Male',
    'Finance',
    'Finance Executive',
    'Full Time',
    '2023-03-20',
    'Finance Manager',
    'Kondapur',
    'Hyderabad',
    'Telangana',
    'India',
    'Venkat Reddy',
    '9876500003',
    50000,
    8000,
    4000
);
