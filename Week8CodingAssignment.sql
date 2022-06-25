SELECT titles.title, count(titles.title) FROM titles JOIN employees on titles.emp_no = employees.emp_no WHERE employees.birth_date > '1965-01-01' GROUP BY titles.title;

SELECT titles.title, AVG(salaries.salary) FROM titles JOIN salaries on titles.emp_no = salaries.emp_no GROUP BY titles.title;

SELECT departments.dept_name, SUM(salaries.salary) FROM departments JOIN dept_emp on departments.dept_no = dept_emp.dept_no join salaries on dept_emp.emp_no = salaries.emp_no WHERE departments.dept_name = 'Marketing' AND salaries.from_date >= '1990-01-01' AND salaries.to_date <= '1992-12-31' GROUP BY departments.dept_name;