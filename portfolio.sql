--What are the average salaries for each job?

SELECT j.job_title AS "Position", AVG(e.salary) AS "Average Salary"
FROM hr.jobs j 
INNER JOIN HR.EMPLOYEES e ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY 2 DESC;


--What location has the most employees?


SELECT l.city, COUNT(ev.employee_id) AS num_employees
FROM hr.emp_details_view ev
INNER JOIN hr.locations l ON ev.location_id = l.location_id
GROUP BY l.city;


--How many employees have worked for 6 1/2 to 7 1/2 years?

SELECT COUNT(employee_id)
FROM hr.employees
WHERE hire_date BETWEEN '20-JUL-04' AND '20-JUL-06';
