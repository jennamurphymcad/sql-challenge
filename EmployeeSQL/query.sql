--1.  List the following details of each employee: employee number, last name, 
-- first name, sex, and salary.

-- Create view from query
CREATE VIEW employee_data AS
SELECT e.emp_no, e.last_name, e.first_name, s.salary
FROM employees AS e
  JOIN salaries AS s
  ON (e.emp_no = s.emp_no)

-- Query the table view created
SELECT *
FROM employee_data;

-- Drop view
DROP VIEW employee_data;

---- END QUERY 1 ----


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31'
and hire_date < '1987-01-01'
ORDER BY hire_date

---- END QUERY 2 ----


-- 3. List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.

CREATE VIEW manager_data AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON (d.dept_no = dm.dept_no)
	  JOIN employees AS e
	  ON (dm.emp_no = e.emp_no)

-- Query the table view created
SELECT *
FROM manager_data;

-- Drop view
DROP VIEW manager_data;

---- END QUERY 3 -----

-- 4. List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.
CREATE VIEW dept_each_employee AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON (d.dept_no = dm.dept_no)
	  JOIN employees AS e
	  ON (dm.emp_no = e.emp_no)

-- Query the table view created
SELECT *
FROM dept_each_employee;

-- Drop view
DROP VIEW dept_each_employee;

---- END QUERY 4 ----


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
