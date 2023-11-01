-- Create Titles Table
CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

-- Create Employees Table
CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title VARCHAR(5) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES Titles(title_id)
);

-- Create Departments Table
CREATE TABLE Departments (
    dept_no VARCHAR(5) PRIMARY KEY,
    dept_name VARCHAR(25) NOT NULL
);

-- Create Department_Manager Table
CREATE TABLE Department_Manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no INT NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

-- Create Department_Employee Table
CREATE TABLE Department_Employee (
    emp_no INT NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create Salaries Table
CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);