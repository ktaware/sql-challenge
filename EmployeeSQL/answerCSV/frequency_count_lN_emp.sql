--8-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
create view frequency_count_lastname_emp as
select last_name, count(last_name)as "Frequency counts  employees lastName" 
from employees
group by last_name 
order by "Frequency counts  employees lastName" DESC