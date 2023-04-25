USE employees;

#1
SELECT employees.first_name, employees.last_name
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

#2
SELECT title AS 'JOB', emp_no AS 'Employee #'
FROM titles
WHERE emp_no IN(
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
);

#3
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS 'NAME'
FROM  employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
)
  AND employees.gender = 'f';

#BONUS
SELECT dept_name AS 'NAME'
FROM  departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE employees.gender = 'f'
    )
);

