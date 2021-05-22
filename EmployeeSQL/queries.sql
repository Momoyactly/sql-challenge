-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM Employees e
JOIN Salaries s ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.

SELECT last_name, first_name, hire_date 
FROM Employees
WHERE hire_date LIKE '%1986';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM Departments d
JOIN Dept_manager_junction j ON d.dept_no = j.dept_no
JOIN Employees e ON j.emp_no = e.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_no
FROM Employees e
JOIN Dept_emp_juncion j ON e.emp_no = j.emp_no
JOIN departments d ON d.dept_no = j.dept_no;

-- List first name, last name, and sex for employees whose 
-- first name is "Hercules" and last names begin with "B."

SELECT e.first_name, e.last_name
FROM employees e
WHERE first_name like 'Hercules'
	AND last_name LIKE 'B%';
	
-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN Dept_emp_juncion j ON e.emp_no  = j.emp_no
JOIN departments d      ON d.dept_no = j.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN Dept_emp_juncion j ON e.emp_no  = j.emp_no
JOIN departments d      ON d.dept_no = j.dept_no
WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "# of last names"
FROM Employees
GROUP BY last_name