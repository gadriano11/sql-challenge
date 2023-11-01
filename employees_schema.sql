
-- Create Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Create Titles Table
CREATE TABLE Titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100)
);

-- Create Employees Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    sex VARCHAR(2),
    hire_date DATE,
    FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);

-- Create Department_Manager Table
CREATE TABLE Department_Manager (
    dept_no VARCHAR(10),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

-- Create Department_Employee Table
CREATE TABLE Department_Employee (
    emp_no INT,
    dept_no VARCHAR(10),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- Create Salaries Table
CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);