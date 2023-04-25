CREATE DATABASE join_test_db2;
# CREATE TABLE roles (
#     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     name VARCHAR(100) NOT NULL,
#     PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    email VARCHAR(100) NOT NULL,
#    role_id INT UNSIGNED DEFAULT NULL,
#    PRIMARY KEY (id),
#    FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#     ('bob', 'bob@example.com', 1),
#     ('joe', 'joe@example.com', 2),
#     ('sally', 'sally@example.com', 3),
#     ('adam', 'adam@example.com', 3),
#     ('jane', 'jane@example.com', null),
#     ('mike', 'mike@example.com', null),
#     ('john', 'john@john.com', null),
#     ('jackob', 'jackob@jackob.com', 2),
#     ('jingle', 'heimer@heimer.com', 2),
#     ('shmidt', 'shmidt@shmidt.com', 2);
#
# USE join_test_db;
# DESCRIBE roles;
# DESCRIBE users;
# SELECT * FROM roles;
# SELECT * FROM users;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
# JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id;
#
# SELECT roles.name AS role_name, COUNT(*)
# FROM users
# JOIN roles ON users.role_id = roles.id
# GROUP BY role_name;

USE employees;
DESCRIBE employees;
select * FROM employees;
DESCRIBE departments;
SELECT * FROM departments;
DESCRIBE dept_manager;
SELECT * FROM dept_manager;
DESCRIBE dept_emp;
SELECT * FROM dept_emp;

#1
SELECT dept_name AS 'Department Name', CONCAT(employees.first_name, '', employees.last_name) AS 'Department Manager'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date > NOW()
  AND employees.gender = 'f'
ORDER BY dept_name;

#2
SELECT titles.title, COUNT(*)
FROM titles
         JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
         JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE (
                  departments.dept_name = 'Customer Service'
              AND dept_emp.to_date > NOW()
              AND titles.to_date > NOW()
          )
GROUP BY titles.title;

#3
SELECT dept_name AS 'Department Name', CONCAT(employees.first_name, '', employees.last_name) AS 'Department Manager', salaries.salary AS 'Salary'
FROM departments
         JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
         JOIN employees ON dept_manager.emp_no = employees.emp_no
         JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date > NOW()
  AND salaries.to_date > NOW()
ORDER BY dept_name;



