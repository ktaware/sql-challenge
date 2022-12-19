--7-List each employee in the Sales and Development departments, including their employee number,
--last name, first name, and department name.
create view emp_dept_sales_development as
select  d.dept_no,e.emp_no, e.last_name, e.first_name , d.dept_name
From departments as d, employees as e, dept_emp as de 
	where de.dept_no= d.dept_no and  de.emp_no=e.emp_no and 
	(d.dept_name='Sales' or d.dept_name='Development');
 