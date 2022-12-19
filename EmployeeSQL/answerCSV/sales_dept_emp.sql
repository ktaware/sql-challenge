--6-List each employee in the Sales department, including their employee number, last name, and first name.
create view employee_in_sales_dept as
select  d.dept_no,e.emp_no, e.last_name, e.first_name , d.dept_name
From departments as d, employees as e, dept_emp as de 
	where de.dept_no= d.dept_no and  de.emp_no=e.emp_no and d.dept_name='Sales';

