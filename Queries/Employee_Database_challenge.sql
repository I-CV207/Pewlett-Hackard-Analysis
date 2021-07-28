--Deliverable 1

--Step 1
SELECT e.emp_no,
e.first_name,
e.last_name,
--Step 2
ti.title,
ti.from_date,
ti.to_date
--Step 3
INTO retirement_titles
FROM employees as e
--Step 4
INNER JOIN titles as ti
ON (e.emp_no=ti.emp_no)
--Step 5
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SELECT*FROM retirement_titles;

--Step 8,9,10 
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
--Step 11
INTO unique_titles
FROM retirement_titles as rt
--Step 12
ORDER BY rt.emp_no,rt.to_date DESC;

SELECT*FROM unique_titles;

--Step 15,16
SELECT COUNT(ut.title),ut.title
--Step 17
INTO retiring_titles
FROM unique_titles as ut
--Step 18
GROUP BY ut.title
ORDER BY ut.count DESC;

SELECT*FROM retiring_titles;

--Deliverable 2
--Step 1
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
--Step 2
de.from_date,
de.to_date,
--Step 3
ti.title
--Step 5
INTO mentorship_elegibilty
FROM employees as e
--Step 6
INNER JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
--Step 7
INNER JOIN titles as ti
ON (e.emp_no=ti.emp_no)
--Step 8
WHERE (de.to_date='9999-01-01')
	AND(e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
--Step 9
ORDER BY e.emp_no;	

SELECT*FROM mentorship_elegibilty;