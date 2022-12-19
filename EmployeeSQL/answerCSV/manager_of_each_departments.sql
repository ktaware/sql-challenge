--3-List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
create view manger_of_each_departments as
SELECT dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM  dept_manager as dm, employees as e, departments as d
	where dm.emp_no = e.emp_no and dm.dept_no = d.dept_no;
