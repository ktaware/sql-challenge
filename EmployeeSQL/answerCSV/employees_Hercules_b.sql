--5-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
create view employee_Hercules_B as
select first_name, last_name, sex
from employees
	where first_name= 'Hercules' and last_name Like 'B%';
