create table if not EXISTS empl(
Eno char(3),
Ename varchar(15),
age int(2),
gen char(1),
sal int(7),
exp int(2),
loc varchar(15),
dno char(3)
);

insert into empl VALUES
('E01','Mahad',15, 'M', 50000, 2, 'Dhaka', 'D05'),
('E02','Tasnim',13, 'F', 40000, 1, NULL, 'D02'),
('E03','Rahim',35, 'M', 20000, 2, 'Dhaka', 'D07'),
('E04','Zarin',13, 'F', 60000, 5, 'Cumilla', 'D04'),
('E05','Araf',15, 'M', 10000, 3, 'Rajshahi', 'D06'),
('E06','Ayman',16, 'M', 800000, 2, 'Cumilla', 'D01'),
('E07','Farhan',23, 'M', 50000, 4, 'Rajshahi', 'D03')
;

select * from empl;

# Display the names of employees
select ename from empl;

# Display the names and age of employees whose age is more than 20
select ename, age from empl where age > 20;

# Display names of female emplyees
select ename from empl where gen = 'F';

# Display names of employees which are starting with either  A or S
select ename from empl where ename like 'A%' or ename like 'S%';

# Display maximum age and minimum experience of employees whose names are ending with i or a.
select max(age), min(exp) from empl where ename like '%i' or ename like '%a';

# Diplay maximum age of male employees whose names are more then 3 charecters long.
select ename, max(age) from empl where gen = 'M' and ename like '____%';

# Display the names of female employees in whose names i is anywhere and either experiesnce is more then 1 year or age is less then 40.
select ename from empl where gen = 'F' and ename like '%i%' and (exp > 1 or age < 40);

# Display maximum experience of male employees working in either D01 or D03 department.
select max(exp) from empl where gen = 'M' and (dno = 'D01' or dno = 'D03');

# Display names of employees whose age is more than 30 and names have n or a as 3rd charecter.
select ename from empl where age > 30 and (ename like '__n%' or ename like '__a%');

# Display total numbers of female employees.
select count(*) from empl where gen = 'F';

# Display average age for female employees.
select avg(age) from empl where gen = 'F';

# Display unique department numbers in which employees are working.
select distinct dno from empl;