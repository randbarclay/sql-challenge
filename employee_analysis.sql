--1: list details of each employee: employee no, last name, first name, gender, and salary

select e.emp_no,e.last_name,e.first_name,e.gender,s.salary
from employee e inner join salaries s on (e.emp_no = s.emp_no);

--2: list employees hired in 1986

select * from employee where extract(year from hire_date) = 1986;

--3: list the manager of each dept with following info: dept_no, 
--dept_nm, emp_no, last name, first name, and start/end dates

select d.dept_no, d.dept_name, e.emp_no, e.last_name,e.first_name,dmng.from_date
as start_date, dmng.to_date as end_date
from employee e inner join dept_manager dmng on (e.emp_no = dmng.emp_no)
inner join department d on (d.dept_no = dmng.dept_no)

--4: list the department of each employee with emp_no, last name, first name, department name

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee e inner join dept_emp on (e.emp_no = dept_emp.emp_no)
inner join department d on (dept_emp.dept_no = d.dept_no);

--5: list all employees whose first name is Hercules with last name starting with B
select * from employee where first_name = 'Hercules' and last_name like 'B%'

--6: list all employees in the sales department, including their emp no, last name, 
--first name, and department name

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee e inner join dept_emp on (e.emp_no = dept_emp.emp_no)
inner join department d on (dept_emp.dept_no = d.dept_no)
where dept_emp.dept_no = 'd007';

--7: list all employees in the sales and development depts, including
--employee no, last name, first name, department name

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employee e inner join dept_emp on (e.emp_no = dept_emp.emp_no)
inner join department d on (dept_emp.dept_no = d.dept_no)
where dept_emp.dept_no = 'd007' or dept_emp.dept_no = 'd005';

--8: in descending order, list the frequency count of employee last names

select count(*) as count,last_name from employee
group by last_name
order by count(*) desc;

