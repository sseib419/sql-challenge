CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);

SELECT * FROM departments;


CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (employee_no, dept_no)
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

SELECT * FROM dept_emp;


CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

SELECT * FROM dept_manager;


CREATE TABLE salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
	
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
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
);

SELECT * FROM employees
