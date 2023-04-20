USE employees;
DESCRIBE employees;

#2
SELECT DISTINCT (title)
FROM titles;

#3, 4
SELECT DISTINCT first_name, last_name
FROM employees
WHERE(
                 last_name LIKE '%E'
             AND last_name LIKE 'E%'
         );
#GROUP BY last_name;

#5
SELECT DISTINCT last_name
FROM employees
WHERE (
                  last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
          );

#6
SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE (
                  last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
          )
GROUP BY last_name
ORDER BY COUNT(*);

#7
SELECT gender, COUNT(*)
FROM employees
WHERE first_name IN ('Irena', 'Maya', 'Vidya')
GROUP BY gender;
