USE employees;

DESCRIBE employees;

SELECT *
FROM employees
WHERE (
            first_name = 'Irena'
        OR first_name = 'Maya'
        OR first_name = 'Vidya'
    )
  AND gender = 'm'
ORDER BY last_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE (
                  last_name LIKE '%E'
              OR last_name LIKE 'E%'
          );

SELECT CONCAT(first_name, last_name)
FROM employees
WHERE (
                  last_name LIKE '%E'
              AND last_name LIKE 'E%'
          )
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE (
                  last_name LIKE '%q%'
              AND NOT last_name LIKE '%qu%'
          );

SELECT *
FROM employees
WHERE (
                  DAY(birth_date) = 25
              AND MONTH(birth_date) = 12
              AND YEAR(hire_date) BETWEEN 1989 AND 2000
          )
ORDER BY birth_date, hire_date DESC;

SELECT DATEDIFF(NOW(), hire_date)
FROM employees
WHERE (
                  DAY(birth_date) = 25
              AND MONTH(birth_date) = 12
              AND YEAR(hire_date) BETWEEN 1989 AND 2000
          );


SELECT birth_date FROM employees;
