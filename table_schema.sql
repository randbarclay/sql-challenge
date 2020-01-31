drop table if exists employee cascade; 

CREATE TABLE    employee (
  emp_no int PRIMARY KEY,
  birth_date date not null,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  gender VARCHAR NOT NULL,
  hire_date date NOT NULL
);

drop table if exists department cascade;

CREATE TABLE   department (
  dept_no varchar  PRIMARY KEY ,
  dept_name VARCHAR NOT NULL
);

drop table if exists dept_emp;



CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  dept_no varchar NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES department(dept_no),
  from_date date NOT NULL,
  to_date date not NULL
);

drop table if exists dept_manager;

CREATE TABLE  dept_manager (
  dept_no varchar NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES department(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  from_date date NOT NULL,
  to_date date not null
);

drop table if exists salaries;

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  salary int NOT NULL,
  from_date date NOT NULL,
  to_date date not NULL
);

drop table if exists title; 

CREATE TABLE title (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
  title varchar ,
  from_date date NOT NULL,
  to_date date not null
);