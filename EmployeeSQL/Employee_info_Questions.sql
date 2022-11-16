---Question 1:
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, salaries.salary
FROM employees as emp
JOIN salaries ON emp.emp_no = salaries.emp_no;

--Question 2:
SELECT emp.first_name,emp.last_name, emp.hire_date
FROM employees as emp
WHERE hire_date LIKE '%1986';

--Question 3:
SELECT dm.dept_no,dm.emp_no, departments.dept_name, emp.last_name, emp.first_name
FROM dept_manager as dm
JOIN departments ON dm.dept_no = departments.dept_no
JOIN employees as emp ON dm.emp_no = emp.emp_no;

--Question 4:
SELECT emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
FROM employees as emp
JOIN dept_emp ON emp.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

---Question 5:
SELECT emp.first_name, emp.last_name, emp.sex
FROM employees as emp
WHERE emp.first_name = 'Hercules' and last_name LIKE 'B%';

---Question 6:
SELECT emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
FROM employees as emp
JOIN dept_emp ON emp.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';

---Question 7:
SELECT emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
FROM employees as emp
JOIN dept_emp ON emp.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd005' or departments.dept_no = 'd007';


--Question 8:
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;