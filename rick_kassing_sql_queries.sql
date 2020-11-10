-- Join employees with emp_no
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.sex,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name,
  employees.last_name,
  employees.hire_date
FROM employees
where hire_date between '1986-01-01' and '1986-12-31'

--3. List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, d.dept_name, dm.emp_no, EMP.last_name, EMP.first_name
from dept_manager as dm
inner join departments as D on dm.dept_no = d.dept_no
inner join employees as EMP on dm.emp_no = EMP.emp_no

--4. List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select de.emp_no, EMP.last_name, EMP.first_name, d.dept_name  
from dept_emp as de
inner join departments as D on de.dept_no = d.dept_no
inner join employees as EMP on de.emp_no = EMP.emp_no

--5. List first name, last name, and sex for employees whose
--first name is "Hercules" and last names begin with "B."

SELECT employees.first_name,
  employees.last_name,
  employees.sex
FROM employees
where first_name = 'Hercules' and last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

select de.emp_no, EMP.last_name, EMP.first_name, d.dept_name  
from dept_emp as de
inner join departments as D on de.dept_no = d.dept_no
inner join employees as EMP on de.emp_no = EMP.emp_no
where dept_name = 'Sales'

--7. List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.

Select de.emp_no, EMP.last_name, EMP.first_name, d.dept_name  
from dept_emp as de
inner join departments as D on de.dept_no = d.dept_no
inner join employees as EMP on de.emp_no = EMP.emp_no
where dept_name = 'Sales' or dept_name = 'development'

--8. In descending order, 
--list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) AS "last_name_count"
FROM employees
GROUP BY last_name
ORDER BY "last_name_count" DESC;


