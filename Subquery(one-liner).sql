-- create table employee(
-- 	id int auto_increment primary key,
--     name varchar(255) not null,
--     age int not null check(age>=18),
--     department varchar(100) not null,
--     salary int
-- );
-- INSERT INTO employee (name, age, department, salary) VALUES
--     ("John", 28, "HR", 45000),
--     ("Priya", 32, "IT", 60000),
--     ("David", 25, "Finance", 52000),
--     ("Ayesha", 29, "IT", 62000),
--     ("Rahul", 30, "HR", 47000);

-- --select employee of HR department
-- select * from employee
-- where department = "hr";

select * from employee
order by salary desc
;

select *from employee
where salary>=60000 and department = "IT"
order by salary DESC;

select department , avg(salary) as 'Avg_Salary' from employee
group by department
Order by Avg_Salary Desc;

select department, count(*) as Number_Employees from employee
group by department
order by Number_Employees DESC
limit 1;

 
select department, count(*) as Number_Employees from employee
group by department
having Number_Employees > 1
order by Number_Employees DESC;

select * from employee
where salary>(select Avg(salary) from employee);


select name,salary from employee
where salary>(select Avg(salary) from employee);

select name,salary from employee
where salary = (select max(salary) from employee);

select * from employee
where salary = (select min(salary) from employee);

select name from employee
where department = (select department from employee 
					where name = 'Amaan');
                    
select * from employee
where salary > (select avg(salary) from employee);

select name, department from employee
where salary = (select max(salary) from employee);

select name, salary from employee
where salary in(select salary from employee where upper(department) ="HR");

select name,department from employee
where department not in(select department from employee where name='Aryan');

select name, salary from employee
where salary>(select salary from employee where name = 'Saifi');

select name,department,salary from employee
where department in (select department from employee where salary<50000);

select name,department from employee
where salary in (select avg(salary) from employee
				group by department
                having avg(salary)<60000);
                
select name,salary from employee
where salary>(select avg(salary) from employee);

select * from employee
where salary = (select max(salary) from employee);

select department from employee
group by department
having avg(salary) = (
					 select min(avg(salary) 
					 from (
                     select department, avg(salary)
                     from employee
                     group by department
                     )
);

 SELECT department
FROM employee
GROUP BY department
HAVING AVG(salary) = (
    SELECT MIN(avg_salary)
    FROM (
        SELECT department, AVG(salary) AS avg_salary
        FROM employee
        GROUP BY department
    ) AS dept_avg
);

select * from employee
where salary > (select avg(salary) from employee);

select * from employee
where salary = (select max(salary) from employee);

select name,salary from employee
where salary<(select salary from employee
			  where upper(name) = 'ARYAN' );
              
select department from employee
where salary = (select min(salary) from employee);

select * from employee
where department = (select department from employee where upper(name) = 'SAIFI');

select name,salary from employee
where salary = (select max(salary) as Second_Highest_Salary from employee
where salary < (select max(Salary) from employee)
);

select name,department from employee
where department != (select department from employee
					where upper(name) = 'Amaan');
                    
select name from employee
where salary in (select salary from employee
				where upper(department) = 'HR');