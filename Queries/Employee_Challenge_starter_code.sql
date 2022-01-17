

-- deliverable 1 part 1
---- Create a table of retirement titles with defined birthdates,133k rows returned
SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN Titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order by e.emp_no;

SELECT * FROM retirement_titles;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

-- Use Dictinct with Orderby to remove duplicate rows,90398 rows affected.
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date='9999-01-01'
ORDER BY emp_no ASC,TO_DATE DESC;
----https://www.w3schools.com/sql/sql_ref_asc.asp
DROP table unique_titles;

SELECT * FROM unique_titles ;
SELECT COUNT(*) FROM unique_titles;


-- Create count of retiring titles from unique table(ut.)
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY COUNT(ut.title) DESC;
SELECT * FROM retiring_titles;

drop table retiring_titles

 
--https://www.w3schools.com/sql/sql_ref_asc.asp
 