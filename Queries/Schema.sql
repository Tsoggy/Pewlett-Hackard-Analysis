-- Creating tables for PH-EmployeeDB

CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);

CREATE TABLE employees (
	emp_no int NOT NULL,
	birth_date date NOT NULL,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	gender varchar NOT NULL,
	hire_date date NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR (4) not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) REFERENCES employees (emp_no),
	foreign key (dept_no) References departments (dept_no),
	primary key (emp_no, dept_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);

create table titles (
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no)
);

create table dept_emp (
	emp_no int not null,
	dept_no varchar(4) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no)
);

select * from departments