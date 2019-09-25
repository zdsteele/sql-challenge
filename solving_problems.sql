
-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
join salaries s
on (e.emp_no = s.emp_no);

-- 2. List employees who were hired in 1987.

select e.last_name, e.first_name, e.hire_date
from employees e
where hire_date like '%1987%';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select e.first_name, e.last_name, dm.dept_no, dm.emp_no, dm.from_date, dm.to_date, d.dept_name
from employees e
join dept_manager dm on (e.emp_no = dm.emp_no)
join departments d on (dm.dept_no = d.dept_no);

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.first_name, e.last_name, de.dept_no, de.emp_no, d.dept_name
from employees e
join dept_emp de on (e.emp_no = de.emp_no)
join departments d on (de.dept_no = d.dept_no);

-- 5. List all employees whose first name is "Duangkaew" and last names begin with "P."
select e.first_name, e.last_name 
from employees e 
where first_name = 'Duangkaew'
and last_name like 'P%'; 

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.first_name, e.last_name, e.emp_no, d.dept_name
from employees e
join dept_emp de on (de.emp_no = e.emp_no)
join departments d on (d.dept_no = de.dept_no)
where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.first_name, e.last_name, e.emp_no, d.dept_name
from employees e
join dept_emp de on (de.emp_no = e.emp_no)
join departments d on (d.dept_no = de.dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

-- 8. In ascending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees 
group by last_name 
order by count(last_name) ASC;

