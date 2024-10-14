CREATE TABLE departments (
	Dept_Num VARCHAR(4) NOT NULL PRIMARY KEY,
	Dept_Name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;

CREATE TABLE department_employees (
	employee_num INT NOT NULL,
	dept_num VARCHAR(4) NOT NULL,
	PRIMARY KEY (employee_num, dept_num)
	
	);

SELECT * FROM department_employees;

CREATE TABLE dept_manager (
	dept_num VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (dept_num) REFERENCES departments(dept_num)
);

SELECT * FROM dept_manager;

CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL
);

SELECT * FROM salaries;

CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR (35)
);

SELECT * FROM titles;

CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_ID VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_ID) REFERENCES titles(title_id)
);

SELECT * FROM employees
