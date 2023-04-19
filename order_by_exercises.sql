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

SELECT *
FROM employees
WHERE (
                  last_name LIKE '%E'
              AND last_name LIKE 'E%'
          );

SELECT *
FROM employees
WHERE (
                  last_name LIKE '%q%'
              AND NOT last_name LIKE '%qu%'
          );
