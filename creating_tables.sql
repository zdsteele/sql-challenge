CREATE TABLE departments (
dept_no VARCHAR(30),
dept_name VARCHAR(30)
);

create table dept_emp (
emp_no VARCHAR,
dept_no VARCHAR,
from_date VARCHAR,
to_date VARCHAR
);

create table dept_manager (
dept_no VARCHAR,
emp_no VARCHAR,
from_date VARCHAR,
to_date VARCHAR
);


create table employees (
emp_no VARCHAR,
birth_date VARCHAR,
first_name VARCHAR,
last_name VARCHAR,
Gender VARCHAR,
hire_date VARCHAR
);

create table salaries (
emp_no VARCHAR,
salary INT,
from_date VARCHAR,
to_date VARCHAR
);

create table titles (
emp_no VARCHAR,
title VARCHAR,
from_date VARCHAR,
to_date VARCHAR
);


