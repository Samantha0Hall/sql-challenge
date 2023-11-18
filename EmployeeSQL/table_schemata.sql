DROP TABLE IF EXISTS department;

CREATE TABLE department(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

select * from department


DROP TABLE IF EXISTS titles;

CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

select * from titles;


DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from employees;



DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);

select * from dept_emp;



DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL, 
	emp_no INT NOT NULL, 
	PRIMARY KEY (dept_no, emp_no)
);

select * from dept_manager;



DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

select * from salaries;