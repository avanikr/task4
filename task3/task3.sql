create database task3
use task3
go
create table registrationtbl(
id int not null primary key,
firstname varchar(10),
lastname varchar(10),
sex varchar(8),
age int,
district varchar(20),
phone varchar(15),
email varchar(50),
username varchar(10),
creationdate date
);


insert into registrationtbl(id,firstname,lastname,sex,age,district,phone,email,username,creationdate)
values (1,'avani','k.r','female',22,'kottayam','9945678956','avani@gmail.com','avani123','2023-02-12');
insert into registrationtbl(id,firstname,lastname,sex,age,district,phone,email,username,creationdate)
values (2,'aparna','kumar','female',23,'kottayam','8545678956','aprna@gmail.com','aprna123','2022-03-24');
insert into registrationtbl(id,firstname,lastname,sex,age,district,phone,email,username,creationdate)
values (3,'amal','raj','male',22,'kollam','8545678956','amal@gmail.com','amalraj','2020-03-10');
insert into registrationtbl(id,firstname,lastname,sex,age,district,phone,email,username,creationdate)
values (4,'rahul','reji','male',27,'kozhikode','9745678956','rahul@gmail.com','raahulggf','2025-05-24');
insert into registrationtbl(id,firstname,lastname,sex,age,district,phone,email,username,creationdate)
values (5,'ammu','vijayan','female',26,'alappuzha','9989478956','ammu@gmail.com','ammu23','2023-08-11');
select * from registrationtbl;

delete from registrationtbl where id=1;

update registrationtbl set firstname='arjun'where id=3;
 
 
 sp_rename'registrationtbl.creationdate','dob','column'

 alter table registrationtbl
 add country varchar(10)

 alter table registrationtbl
 drop column country 

create table employee	
(
empid int primary key,
empname varchar(10),
age int,
salary float,
phonenumber varchar(15)
)
insert into employee(empid,empname,age,salary,phonenumber)
values(1,'akhil',24,25000,'8567788978')
insert into employee(empid,empname,age,salary,phonenumber)
values(2,'sunil',27,27000,'8556789878')
insert into employee(empid,empname,age,salary,phonenumber)
values(3,'ramesh',30,21000,'9567788978')
insert into employee(empid,empname,age,salary,phonenumber)
values(4,'nimisha',22,20000,'8567788998')
insert into employee(empid,empname,age,salary,phonenumber)
values(5,'radha',30,10000,'9555588978')
insert into employee(empid,empname,age,salary,phonenumber)
values(6,'suresh',30,10000,'9678588978')

select * from employee;

select max(salary) from employee where salary < (select max (salary) from employee);


create table department 
(
depid int primary key,
depname varchar(20)
)
insert into department(depid,depname)
values(100,'waiter')
insert into department(depid,depname)
values(101,'cook')
insert into department(depid,depname)
values(102,'security')
insert into department(depid,depname)
values(103,'security')
insert into department(depid,depname)
values(104,'cook')
insert into department(depid,depname)
values(105,'cook')

select * from department


select depname, count(*)
from department group by depname



create table empdetails
(id int primary key,empid int foreign key
references employee(empid),depid int foreign key
references department(depid))

insert into details(id,empid,depid)
values(1,1,100)
insert into details(id,empid,depid)
values(2,2,101)
insert into details(id,empid,depid)
values(3,3,102)
insert into details(id,empid,depid)
values(4,4,103)
insert into details(id,empid,depid)
values(5,5,104)
insert into details(id,empid,depid)
values(6,6,105)
select * from details

 
create table student
(
stdid int,
stdname varchar(15),
stdage int
)
insert into student(stdid,stdname,stdage)
values(1,'avani',22)
insert into student(stdid,stdname,stdage)
values(2,'ammu',22)
insert into student(stdid,stdname,stdage)
values(3,'aparna',22)
insert into student(stdid,stdname,stdage)
values(4,'anjali',22)

create table departments
(
dptid int,
stdname varchar(15),
dptname varchar(20),
)
insert into departments(dptid,stdname,dptname)
values(100,'avani','b.com')
insert into departments(dptid,stdname,dptname)
values(101,'ammu','m.com')
insert into departments(dptid,stdname,dptname)
values(102,'aparna','bca')
insert into departments(dptid,stdname,dptname)
values(103,'anjali','mca')
select * from departments


select student.stdid,departments.dptname from student  INNER JOIN departments on student.stdname=departments.stdname;

select student.stdname,departments.dptname from student  left join departments on student.stdname=departments.stdname order by student.stdname;
select student.stdname,departments.dptname from student  right join  departments on student.stdname=departments.stdname order by student.stdname;








CREATE TABLE menu (id Int, item varchar(10), date DATE);

INSERT INTO menu
VALUES (1, 'lays', '2023-2-16');
INSERT INTO menu
VALUES 
(2, 'bread', '2023-2-16' ),
(3, 'eclairs', '2023-2-16' );

SELECT id, item, date
    FROM   menu  
    WHERE  id = '3'; 


UPDATE menu
 SET item = 'chocolate croissant', date = 2022-12-16
 WHERE id = 2;

 DELETE FROM menu WHERE item_name='bread';
