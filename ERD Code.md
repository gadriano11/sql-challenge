Titles
-
title_id VARCHAR(5) PK
title VARCHAR(30)

Employees
-
emp_no INT PK
emp_title VARCHAR(5)  FK >- Titles.title_id
birth_date DATE
first_name VARCHAR(30)
last_name VARCHAR(30)
sex VARCHAR(1)
hire_date DATE

Departments
-
dept_no VARCHAR(5) PK
dept_name VARCHAR(25)

Department_Manager 
-
dept_no VARCHAR(10) PK FK >- Departments.dept_no
emp_no INT PK FK >-< Employees.emp_no

Department_Employee 
-
emp_no INT PK FK >-< Employees.emp_no
dept_no VARCHAR(5) PK FK >- Departments.dept_no


Salaries
-
emp_no INT PK FK - Employees.emp_no
salary INT