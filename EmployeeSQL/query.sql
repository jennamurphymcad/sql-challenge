--1.  List the following details of each employee: employee number, last name, 
-- first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
  JOIN salaries AS s
  	ON (e.emp_no = s.emp_no);

---- END QUERY 1 ----


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1985-12-31'
and hire_date < '1987-01-01'
ORDER BY hire_date;

---- END QUERY 2 ----


-- 3. List the manager of each department with the following information: department number, 
-- department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON (d.dept_no = dm.dept_no)
	  JOIN employees AS e
	  ON (dm.emp_no = e.emp_no);

---- END QUERY 3 -----


-- 4. List the department of each employee with the following information: employee number, 
-- last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
	JOIN dept_manager AS dm
	ON (d.dept_no = dm.dept_no)
	  JOIN employees AS e
	  ON (dm.emp_no = e.emp_no);

---- END QUERY 4 ----


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last 
-- names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
and last_name like 'B%';

---- END QUERY 5 ----


-- 6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
CREATE VIEW sales_dept_employees AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM departments AS d
	JOIN dept_emp AS de
	ON (d.dept_no = de.dept_no)
	  JOIN employees AS e
	  ON (de.emp_no = e.emp_no);

-- Query the table view created
SELECT *
FROM sales_dept_employees
WHERE dept_name = 'Sales';

---- END QUERY 6 ----


-- 7. List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
SELECT *
FROM sales_dept_employees
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- Drop view
DROP VIEW sales_dept_employees;

---- END QUERY 7 ----


-- 8. In descending order, list the frequency count of employee last names, i.e., how many 
-- employees share each last name.
SELECT last_name, count(last_name)
FROM employees 
GROUP BY last_name
ORDER BY count DESC;

---- END QUERY 8 ----

---- THANKS FOR GRADING :) -----
---- HAVE A GOOD DAY ----