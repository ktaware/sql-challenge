--4-List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
create view department_no_for_each_employees as
select  d.dept_no,e.emp_no, e.last_name, e.first_name , d.dept_name
From departments as d, employees as e, dept_emp as de 
	where de.dept_no= d.dept_no and  de.emp_no=e.emp_no;