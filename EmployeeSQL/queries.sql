-- employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM "Employees" AS e
INNER JOIN "Salaries" AS s ON
e.emp_no=s.emp_no;

-- first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM "Employees" 
WHERE hire_date > '1985-12-31' AND hire_date < '1987-01-01';

-- manager of each department along with their department number, department name,  
-- employee number, last name, and first name
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM "Dept_Manager" AS dm
INNER JOIN "Departments" AS d ON dm.dept_no=d.dept_no
INNER JOIN "Employees" AS e ON dm.emp_no=e.emp_no;

-- department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Dept_Employee" AS de
INNER JOIN "Employees" AS e ON de.emp_no=e.emp_no
INNER JOIN "Departments" AS d ON de.dept_no=d.dept_no;

-- first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B
SELECT first_name, last_name, sex
FROM "Employees"
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- employees in the Sales department, including their employee number, last name, and first name
SELECT e.emp_no, e.last_name, e.first_name
FROM "Departments" AS d 
INNER JOIN "Dept_Employee" AS de ON d.dept_no=de.dept_no
INNER JOIN "Employees" AS e ON de.emp_no=e.emp_no
WHERE d.dept_name = 'Sales';

-- employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM "Departments" AS d 
INNER JOIN "Dept_Employee" AS de ON d.dept_no=de.dept_no
INNER JOIN "Employees" AS e ON de.emp_no=e.emp_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

-- frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name)
SELECT e.last_name, COUNT(last_name) 
FROM "Employees" AS e
GROUP BY e.last_name
ORDER BY COUNT(last_name) DESC;