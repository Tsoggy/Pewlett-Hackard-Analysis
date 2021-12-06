-- Find the employees ready for retirement
select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees as e
join titles as t
on (e.emp_no = t.emp_no)
where e.birth_date between '1952-01-01' and '1955-12-31'
order by e.emp_no;

-- Check the table
select * from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

-- Check the table
select * from unique_titles;

-- Find count of retiring titles
select count(title),
title
into retiring_titles
from unique_titles
group by title
order by count desc;






















