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