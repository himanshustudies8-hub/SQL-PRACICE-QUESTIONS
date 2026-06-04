create database if not exists practice;

create table employee(
	employee_id int auto_increment primary key,
    employee_name varchar(20) not null,
    age int ,
    gender varchar(20),
    email varchar(50),
    dept_id int 
	
);

select * from employee;

insert into employee(employee_name,age,gender,email,dept_id)
values
('Amit Sharma',25,'Male','amit1@gmail.com',1),
('Ravi Kumar',28,'Male','ravi2@gmail.com',2),
('Priya Singh',24,'Female','priya3@gmail.com',1),
('Neha Gupta',27,'Female','neha4@gmail.com',3),
('Rahul Verma',30,'Male','rahul5@gmail.com',2),
('Pooja Yadav',26,'Female','pooja6@gmail.com',4),
('Karan Mehta',29,'Male','karan7@gmail.com',3),
('Sneha Jain',23,'Female','sneha8@gmail.com',2),
('Vikas Singh',31,'Male','vikas9@gmail.com',1),
('Anjali Sharma',25,'Female','anjali10@gmail.com',5),
('Rohit Kumar',28,'Male','rohit11@gmail.com',4),
('Nisha Gupta',24,'Female','nisha12@gmail.com',2),
('Deepak Verma',32,'Male','deepak13@gmail.com',3),
('Kavita Yadav',29,'Female','kavita14@gmail.com',1),
('Arjun Mehta',27,'Male','arjun15@gmail.com',5),
('Meena Jain',26,'Female','meena16@gmail.com',4),
('Suresh Kumar',34,'Male','suresh17@gmail.com',2),
('Ritika Singh',23,'Female','ritika18@gmail.com',1),
('Manoj Gupta',30,'Male','manoj19@gmail.com',3),
('Payal Verma',25,'Female','payal20@gmail.com',5),
('Sachin Sharma',28,'Male','sachin21@gmail.com',2),
('Komal Yadav',24,'Female','komal22@gmail.com',4),
('Ajay Kumar',31,'Male','ajay23@gmail.com',1),
('Shreya Gupta',27,'Female','shreya24@gmail.com',3),
('Nitin Verma',29,'Male','nitin25@gmail.com',5),
('Ruchi Sharma',26,'Female','ruchi26@gmail.com',2),
('Tarun Singh',32,'Male','tarun27@gmail.com',4),
('Simran Kaur',24,'Female','simran28@gmail.com',1),
('Mohit Gupta',30,'Male','mohit29@gmail.com',3),
('Divya Verma',25,'Female','divya30@gmail.com',5),
('Abhishek Sharma',28,'Male','abhishek31@gmail.com',2),
('Tanya Yadav',23,'Female','tanya32@gmail.com',1),
('Gaurav Kumar',33,'Male','gaurav33@gmail.com',4),
('Muskan Gupta',27,'Female','muskan34@gmail.com',3),
('Harsh Verma',29,'Male','harsh35@gmail.com',5),
('Preeti Sharma',26,'Female','preeti36@gmail.com',2),
('Yash Singh',31,'Male','yash37@gmail.com',1),
('Sakshi Gupta',24,'Female','sakshi38@gmail.com',4),
('Ankit Verma',30,'Male','ankit39@gmail.com',3),
('Isha Sharma',25,'Female','isha40@gmail.com',5),
('Lokesh Kumar',28,'Male','lokesh41@gmail.com',2),
('Bhavna Yadav',23,'Female','bhavna42@gmail.com',1),
('Rakesh Gupta',34,'Male','rakesh43@gmail.com',4),
('Pallavi Verma',27,'Female','pallavi44@gmail.com',3),
('Vivek Sharma',29,'Male','vivek45@gmail.com',5),
('Aarti Singh',26,'Female','aarti46@gmail.com',2),
('Sunil Kumar',32,'Male','sunil47@gmail.com',1),
('Jyoti Gupta',24,'Female','jyoti48@gmail.com',4),
('Hemant Verma',30,'Male','hemant49@gmail.com',3),
('Rekha Sharma',25,'Female','rekha50@gmail.com',5);

select * from employee;

create table department(
  dept_id int primary key,
  deptartment_name varchar(40)
  
);

alter table department
rename column deptartment_name to department_name ;

insert into department(dept_id,department_name)
values
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');


create table department_copy as (select * from department where 1=2);

select * from department_copy;

create table department_copy2
select * from department;

select * from department_copy2;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    subject VARCHAR(50),
    marks INT
);

INSERT INTO students
(student_id, student_name, gender, subject, marks)
VALUES
(1,'Amit','Male','Math',85),
(2,'Priya','Female','Science',92),
(3,'Rahul','Male','English',76),
(4,'Neha','Female','Math',88),
(5,'Karan','Male','Science',67),
(6,'Pooja','Female','English',81),
(7,'Ravi','Male','Math',73),
(8,'Anjali','Female','Science',95),
(9,'Vikas','Male','English',62),
(10,'Sneha','Female','Math',90),
(11,'Deepak','Male','Science',78),
(12,'Kavita','Female','English',84),
(13,'Arjun','Male','Math',91),
(14,'Meena','Female','Science',69),
(15,'Suresh','Male','English',75),
(16,'Ritika','Female','Math',82),
(17,'Manoj','Male','Science',88),
(18,'Payal','Female','English',79),
(19,'Sachin','Male','Math',93),
(20,'Komal','Female','Science',72),
(21,'Ajay','Male','English',68),
(22,'Shreya','Female','Math',86),
(23,'Nitin','Male','Science',77),
(24,'Ruchi','Female','English',91),
(25,'Tarun','Male','Math',65),
(26,'Simran','Female','Science',89),
(27,'Mohit','Male','English',74),
(28,'Divya','Female','Math',80),
(29,'Abhishek','Male','Science',96),
(30,'Tanya','Female','English',83),
(31,'Gaurav','Male','Math',71),
(32,'Muskan','Female','Science',87),
(33,'Harsh','Male','English',66),
(34,'Preeti','Female','Math',92),
(35,'Yash','Male','Science',79),
(36,'Sakshi','Female','English',85),
(37,'Ankit','Male','Math',88),
(38,'Isha','Female','Science',73),
(39,'Lokesh','Male','English',81),
(40,'Bhavna','Female','Math',94),
(41,'Rakesh','Male','Science',70),
(42,'Pallavi','Female','English',76),
(43,'Vivek','Male','Math',89),
(44,'Aarti','Female','Science',82),
(45,'Sunil','Male','English',64),
(46,'Jyoti','Female','Math',90),
(47,'Hemant','Male','Science',75),
(48,'Rekha','Female','English',87),
(49,'Naveen','Male','Math',78),
(50,'Monika','Female','Science',93);


-- highest salary with name 
select student_name , marks from students
where marks>=(select max(marks) from students);

-- seond highest salary with name 
select student_name ,marks from students
where marks=
(select max(marks)from students
where marks <
(select max(marks) from students));

select max(marks) from students
where marks <
(select max(marks) from students
 where marks <
(select max(marks) from students));

select student_name, marks from students order by marks  desc limit 3, 1;

select student_name, marks from students order by marks  desc limit 1 offset 1;

CREATE TABLE employee2 (
    empno INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    manager_id INT,
    mobile_no VARCHAR(15),
    hire_date DATE,
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2)
);

INSERT INTO employee2
(empno, name, dept_id, manager_id, mobile_no, hire_date, salary, bonus)
VALUES
(101,'Amit',10,NULL,'9876543201','2020-01-15',80000,10000),
(102,'Neha',10,101,'9876543202','2020-03-20',50000,5000),
(103,'Ravi',20,101,'9876543203','2020-05-10',45000,4000),
(104,'Pooja',20,103,'9876543204','2020-07-12',42000,3500),
(105,'Karan',30,101,'9876543205','2020-09-18',55000,6000),
(106,'Priya',30,105,'9876543206','2021-01-10',48000,4500),
(107,'Rahul',40,105,'9876543207','2021-02-25',52000,5000),
(108,'Sneha',40,107,'9876543208','2021-04-15',41000,3000),
(109,'Ankit',50,101,'9876543209','2021-06-30',60000,7000),
(110,'Meena',50,109,'9876543210','2021-08-05',43000,3500);

select * from employee2;


-- 5. what is the sql query used to find all employess who also hold the managerial position

  select name,manager_id from employee2
  where (empno in(select manager_id from employee2));
  use practice;
  show databases;
  use practice;
  use form;
  show tables;
  
  
-- 6. what is the sql query used to find the names of the employees that begin with 'a'
 
 select name from employee2
 where name like 'r%';
 
 select name from employee2
 where name regexp '^r';
 
-- 7. what is the sql query used to display the current date 


select curdate();
select current_date();
select date(now());
select date(current_timestamp());


-- 8 . what is the sql query used to fetch alternate records form a table
 -- 1. to fetch the even number records;

 select * from employee2
 where empno%2 =0;
 
 -- 2. to fetch the odd number records
 
 select * from employee2
 where empno%2!=0;
 
  -- 9 . what is the sql query used to fetch the common records from two tables
select e.employee_name , d.department_name from employee e
join department d
on e.dept_id =d.dept_id;


-- 10. what is the sql query used to find duplicate rows in table 

select employee_name ,count(*) from employee
group by employee_name
having count(*)>1;

select * from employee2;

select salary ,count(*) from employee2
group by salary
having count(*)=1;

SET SQL_SAFE_UPDATES = 0;

-- 11. what is the sql query used to remove the duplicate rows in table 

delete e1 from employee2 e1
inner join employee2 e2
where e1.empno < e2.empno and  e1.name = e2.name ;

-- 12. what is the sql query used to find the last 5 record from a table 

(select * from employee order by employee_id desc limit 5) order by employee_id asc;

 select * from employee 
 where employee_id >
 (select max(employee_id)-5 from employee);
 
 select * from employee where employee_id >(select count(*)-5 from employee);


-- 13. what is the sql query used to find the first or last record from a table 

select * from employee limit 1;

select * from employee where employee_id = (select min(employee_id) from employee);

select * from employee order by  employee_id desc limit 1;

select * from employee where employee_id = (select max(employee_id) from employee);

-- 14 .what is the sql query used to find the distcint records without using disticnt keyword;

select * from employee
 where  employee_name in
(select employee_name from employee
group by employee_name);

select distinct* from employee;

select dept_id from employee
union  
select dept_id from employee;

-- 15 what is the sql query used to find the maximum of each department ;

select * from employee2;

select * from employee2 where (dept_id,salary) in (select dept_id , max(salary) from employee2
group by dept_id);

-- 16. what is the sql quey used to find the department -wise count of employees sorted by deprtment count in ascending order

select dept_id , count(empno) as total_employee from employee2
group by dept_id order by total_employee asc;

-- 17. 17 how will chnge the datatype of a column 

show tables;

select * from department_copy2;
desc department_copy2;

alter table department_copy2
modify column department_name varchar(50);

alter table department_copy2
modify  department_name varchar(50);

select * from employee2;

alter table employee2
add column city varchar(40);

update employee2 
set city ="faridabad"
where empno=101;

update employee2 
set city ="gurgaon"
where empno=102;

update employee2 
set city ="noida"
where empno=103;

update employee2 
set city ="delhi"
where empno=104;

select * from employee2;

create database video2;

use video2;

CREATE TABLE employeedetails (
    empid INT PRIMARY KEY,
    fullname VARCHAR(100),
    managerid INT,
    dateofjoining DATE,
    city VARCHAR(50)
);

INSERT INTO employeedetails
(empid, fullname, managerid, dateofjoining, city)
VALUES
(1,'Amit Sharma',NULL,'2020-01-15','Delhi'),
(2,'Neha Verma',1,'2020-02-10','Gurgaon'),
(3,'Rahul Singh',1,'2020-03-05','Noida'),
(4,'Priya Gupta',2,'2020-04-12','Faridabad'),
(5,'Rohit Kumar',2,'2020-05-20','Delhi'),
(6,'Sneha Yadav',3,'2020-06-15','Jaipur'),
(7,'Vikas Sharma',3,'2020-07-01','Lucknow'),
(8,'Pooja Jain',4,'2020-08-18','Chandigarh'),
(9,'Ankit Verma',4,'2020-09-10','Delhi'),
(10,'Meena Singh',5,'2020-10-05','Noida'),
(11,'Karan Malhotra',5,'2020-11-22','Gurgaon'),
(12,'Ritu Sharma',6,'2020-12-14','Jaipur'),
(13,'Deepak Gupta',6,'2021-01-11','Delhi'),
(14,'Nisha Verma',7,'2021-02-08','Lucknow'),
(15,'Sandeep Kumar',7,'2021-03-18','Faridabad'),
(16,'Kavita Jain',8,'2021-04-21','Chandigarh'),
(17,'Arjun Singh',8,'2021-05-12','Delhi'),
(18,'Payal Gupta',9,'2021-06-17','Noida'),
(19,'Mohit Sharma',9,'2021-07-25','Gurgaon'),
(20,'Aarti Verma',10,'2021-08-14','Jaipur'),
(21,'Manish Kumar',10,'2021-09-19','Delhi'),
(22,'Simran Kaur',11,'2021-10-08','Chandigarh'),
(23,'Nitin Yadav',11,'2021-11-15','Lucknow'),
(24,'Komal Sharma',12,'2021-12-20','Delhi'),
(25,'Ajay Gupta',12,'2022-01-10','Faridabad'),
(26,'Reena Jain',13,'2022-02-16','Noida'),
(27,'Tarun Verma',13,'2022-03-14','Gurgaon'),
(28,'Sakshi Singh',14,'2022-04-11','Delhi'),
(29,'Vivek Kumar',14,'2022-05-18','Jaipur'),
(30,'Rashmi Gupta',15,'2022-06-20','Lucknow'),
(31,'Hemant Sharma',15,'2022-07-09','Delhi'),
(32,'Shweta Verma',16,'2022-08-17','Chandigarh'),
(33,'Abhishek Singh',16,'2022-09-12','Noida'),
(34,'Jyoti Gupta',17,'2022-10-15','Faridabad'),
(35,'Naveen Kumar',17,'2022-11-18','Delhi'),
(36,'Pallavi Jain',18,'2022-12-22','Gurgaon'),
(37,'Harsh Sharma',18,'2023-01-13','Jaipur'),
(38,'Anjali Verma',19,'2023-02-08','Delhi'),
(39,'Gaurav Singh',19,'2023-03-11','Lucknow'),
(40,'Muskan Gupta',20,'2023-04-14','Noida'),
(41,'Sachin Kumar',20,'2023-05-16','Faridabad'),
(42,'Isha Sharma',21,'2023-06-18','Delhi'),
(43,'Yash Verma',21,'2023-07-20','Chandigarh'),
(44,'Divya Singh',22,'2023-08-12','Gurgaon'),
(45,'Lokesh Kumar',22,'2023-09-15','Jaipur'),
(46,'Tanvi Gupta',23,'2023-10-18','Delhi'),
(47,'Rakesh Sharma',23,'2023-11-10','Lucknow'),
(48,'Bhavna Verma',24,'2023-12-05','Noida'),
(49,'Umesh Singh',24,'2024-01-15','Faridabad'),
(50,'Kirti Gupta',25,'2024-02-20','Delhi');

CREATE TABLE employeesalary (
    empid INT,
    project VARCHAR(50),
    salary DECIMAL(10,2),
    variable DECIMAL(10,2)
);

INSERT INTO employeesalary (empid, project, salary, variable) VALUES
(1,'Project A',50000,5000),
(2,'Project B',52000,4000),
(3,'Project C',48000,3500),
(4,'Project D',55000,4500),
(5,'Project E',60000,6000),
(6,'Project A',53000,3000),
(7,'Project B',58000,5000),
(8,'Project C',49000,2500),
(9,'Project D',62000,5500),
(10,'Project E',65000,7000),
(11,'Project A',51000,4000),
(12,'Project B',54000,3500),
(13,'Project C',57000,4500),
(14,'Project D',59000,5000),
(15,'Project E',61000,6000),
(16,'Project A',52000,3000),
(17,'Project B',56000,4500),
(18,'Project C',60000,5500),
(19,'Project D',63000,6500),
(20,'Project E',67000,7000),
(21,'Project A',54000,3500),
(22,'Project B',58000,4000),
(23,'Project C',62000,5000),
(24,'Project D',65000,6000),
(25,'Project E',70000,8000),
(26,'Project A',55000,3500),
(27,'Project B',59000,4500),
(28,'Project C',61000,5000),
(29,'Project D',64000,5500),
(30,'Project E',68000,7000),
(31,'Project A',56000,4000),
(32,'Project B',60000,5000),
(33,'Project C',63000,5500),
(34,'Project D',66000,6500),
(35,'Project E',72000,8500),
(36,'Project A',57000,4000),
(37,'Project B',61000,5000),
(38,'Project C',64000,6000),
(39,'Project D',67000,7000),
(40,'Project E',73000,9000),
(41,'Project A',58000,4500),
(42,'Project B',62000,5500),
(43,'Project C',65000,6500),
(44,'Project D',69000,7500),
(45,'Project E',75000,9500),
(46,'Project A',59000,5000),
(47,'Project B',63000,6000),
(48,'Project C',66000,7000),
(49,'Project D',70000,8000),
(50,'Project E',78000,10000);

-- 1. print all records from a employeedetails table
select * from employeedetails;

select * from employeesalary;


-- 2. print deatils of the employee who employe id is 1 

select * from employeedetails
where empid = 1;

-- 3. print details of the all employess whose manager id is 100 and ther city is jhanse 

select * from employeedetails 
where managerid = 100 and city = "jhansi";

-- 4. print all project avaible in employesalary table 

select * from employeesalary;

select distinct project from employeesalary;

-- 5. fetch count of employees working in projecta 

select project, count(empid) as total_employee from employeesalary
group by project ; 

select count(*) from employeesalary 
where project = "project a";

-- 6. write an sql query to find the maximu ,minmum,and averge salry of the employess

select max(salary) maximum, min(salary) minimum , avg(salary) average from employeesalary;

-- 7. write an sql query to find the employee id whose salary lies in the range of 9000 and 15000

select * from employeesalary;

select empid from employeesalary
where salary between 9000 and 15000;

-- 8 . print all employees id who live in delhi city or ther manager  id is 100

show tables;

select * from employeedetails
where city ="delhi" or managerid = 100;

-- 9 . write an sql query to fetch all those employees who work on projects other than p2 
select * from employeesalary
where project <>"project a";

select * from employeesalary
where not project ="project a";

-- 10. write an sql query to display the total salary of each  employee adding the salary with variable value 
select * from employeedetails;

select empid,salary + variable as total_salary from employeesalary;

-- 11. write an sql query to display the names of the employee where second letter of the name is a 

select * from employeesalary;
select * from employeedetails;

select * from employeedetails
where fullname like '_a%';

-- 12. write an sql query to fetch all the empid which are present in either of the tables - "employeedeitails and employeesalary'

select e.empid from employeedetails e
join employeesalary s
on  e.empid = s.empid;

select empid from employeedetails
union 
select empid from employeesalary;

-- 13. rite an sql query to fetch the mepid that are prsent in both the tables - employeedetails and employeesalary 
select e.empid from employeedetails e
join employeesalary s
on  e.empid = s.empid;

select empid from employeedetails
where empid in (select empid from employeesalary);

-- 14 write an sql query to fetch the empid that are prsent in employeedetails but not in employee salary 
select * from employeedetails;

 select empid from employeedetails where empid not in  (select empid from employeesalary );
 
 -- 15 . write an sql query to fetch the employee full names and replace the space with"-"
 
show databases;

use video2;

show tables;

select * from employeedetails;

select replace(fullname," ","-") from employeedetails;

-- 16 write an sql query to display both the emplid and mangerid together

select * from employeedetails;

select concat(empid,managerid) as merge from employeedetails;

-- 17 .write a query only the first name (string before space) from the fullname column of the employeedetails table 

select mid(fullname, 1,locate(" ",fullname))from employeedetails;

select mid(fullname,locate(" ",fullname)+1)from employeedetails;

-- 18 write an sql query to uppercase the name of the employee and lowercase the city values

select upper(fullname),lcase(city) from employeedetails;

-- 19. write an sql query to update the employee names by removing leading and trailing spaces 
update employeedetails
set fullname = trim(fullname);

update employeedetails
set fullname = ltrim(rtrim(fullname));

-- 20. write an sql query to fetch employee names having a salary greather than or equal to 5000 and less tahn or equal to 1000

select * from employeedetails;
select * from employeesalary;

create view employeemerge as
select e.empid, e.fullname , e.managerid,e.dateofjoining,e.city,s.project,s.salary,s.variable from employeedetails e
inner join employeesalary s
on e.empid = s.empid;

select * from employeemerge;
show tables;

select fullname from employeemerge
where salary >=5000 and salary <=10000;

-- 21. write an sql query to fetch all the employee details from the employeedetails tabe who joined in the year 2022

select * from employeedetails;

select * from employeedetails
where year(dateofjoining) = 2022;

-- 22. write an sql query to fetch all employee records from the employeedetails table who have a salary record in the employeesalary table
select * from employeedetails
where empid in
(select empid from employeesalary);

select * from employeedetails e
where exists
(select * from employeesalary s
where e.empid=s.empid);


-- 23 write an sql query to fetch the project wise count of employees sorted by project count in decinding order
select * from employeesalary;

select project,count(project),group_concat(empid)  as c from employeesalary 
group by project
 order by c desc;
 
 -- 24 write an sql query to fetch all the employees who are manager from the employeedetails table 
 
 select * from employeedetails;
 
 select distinct e.fullname from employeedetails e
 inner join employeedetails s
 on e.empid =s.managerid;

-- 25. write an sql query to fetch records from employeedetails where managerid is coming more than once
select * from employeedetails; 

select * from employeedetails
where managerid  in
 (select managerid   from employeedetails
 group by managerid
 having count(managerid)>1);
 
 
 -- 26 write an sql query to fetch only odd rows from the tble
 select * from employeesalary;
 
select rownumber,s.empid,s.project ,s.salary,s.variable from  
(select*, row_number() over(order by empid)as rownumber  from employeesalary) s
where s.rownumber %2 =1;

-- 27 write an sql query to fetch only even employees id row from the table 

select * from employeesalary
where empid %2=0;

select * from employeesalary
where mod(empid,2)=0;

-- 28 write an sql query to create a new table with data and structure copied from another table 
create table employeesalarycopy
select * from employeesalary;

select * from employeesalarycopy;

-- 29 write an sql query to fetch top n records 

select * from employeesalary order by salary desc limit 3;


-- 30 . write sql query to find the 3rd highet salry from atable a qithoun using the top limit keyword 
select emp1.salary from employeesalary emp1
where 3-1=(
 select count(distinct(emp2.salary))
 from employeesalary as emp2
 where emp2.salary>emp1.salary);

-- 31 order employee names bases on alphatecal order 
select * from employeedetails;

select fullname from employeedetails order by fullname;

-- 32 order employes names and salary based on salary 

show tables;

select * from employeemerge;

select * from employeemerge order by fullname ,salary asc;

-- 33 print total salary going from each project 
select * from employeesalary;

select project ,sum(salary) from employeesalary
group by project;



select e.fullname, s.salary from employeedetails e,employeesalary s
where e.empid = s.empid order by s.salary;


 -- 34 print all employee details whos joning dae is not in last year 


select * from employeedetails;

select * from employeedetails 
where year(dateofjoining)<>year(now());

select * from employeedetails
where (dateofjoining <current_date() - interval 1 year);

-- 35 print all employee who gets paid above avergae salary 

select * from employeedetails where empid in (select empid from employeesalary where salary >(select avg(salary) from employeesalary));

-- 36 print all employees who is the comany more tahn 4 years 



select * from employeedetails
where year(current_date()) - year(dateofjoining) >4;


-- 37 print all emmployees with total number of year as service 
 
 select *, year(current_date()) - year(dateofjoining) as service from employeedetails;
 
 -- print total employee in each project 
 
 select project, count(empid) as total_employee from employeesalary
 group by project ;
 
 
 -- 38 . return list all manager order by total number of employees managed by then 
 
 select managerid, count(*) as totalemployees from employeedetails
 group by managerid
 order by totalemployees;
 
 -- 39 return list of all amployee who are serving for more than  2 years and not in project p2 and p3 
 
 select * from employeesalary;
 
 select * from employeedetails;
 
 select * from employeedetails e , employeesalary s
 where year(current_date()) -year(e.dateofjoining)>2 and s.project not in('project a' , 'project b'); 
 
 select * from employeesalary s
 where s.project not in ('project a','project b') and empid in
 (select e.empid from employeedetails e
 where year(current_date()) -year(e.dateofjoining)>2);
 
 -- 40 select avergae saalry from each project 
 
 select project, avg(salary)
 from employeesalary
 group by project;
 
 -- 41 select project with total salary whose total employees salary sum is greater than the maximum of average salary project wise 
 
 
 select * from employeesalary;
 

 
 select project ,sum(salary)as total_salary from employeesalary
 group by project having sum(salary)
>(select max(maxsalary.averagesalary) from (select avg(salary) as averagesalary,project from employeesalary
 group by project) as maxsalary);
 
 -- 42 . add new column role in employeedetails 
 
 select * from employeedetails;
 
 alter table employeedetails
 add  d varchar(20) ;
 
 
 select * from employeedetails;
 
 alter table employeedetails 
 drop column d;
 
 
 -- 43 update the value of role if salary + vairiable <20000 the analysr ,otherwise sr.amalyst  
 
 select * from employeedetails;
 select * from employeesalary;
 update employeedetails e
 inner join employeesalary s
 on e.empid = s.empid
 set e.role =(
 case
 when s.salary + s.variable<60000 then 'analyst'
 else 'sr.analyst'
 end);
 
 select * from employeedetails;
 
 
 -- 44. produce    the output as name(role)
 
 select concat(fullname," ",'(',role,')')  as name_role from employeedetails;
 
 -- 45. display total number of characters in employee name 
 
 select fullname, character_length(trim(fullname))-1 as total_length from employeedetails;
 
 -- 45. display all details of employee whose total salary will 20000 me more tahn after increase salary by 20 %  
 
 select * from employeedetails as e , employeesalary s
 where e.empid=s.empid and (s.salary + s.variable + s.salary*0.2)>20000 and s.salary<20000;
 
 select * from employeedetails
 where month(dateofjoining)=01;
 
 
 -- 46 return all manager ids which are not present in employeedetails table as empid 
 
 select managerid from employeedetails
 where managerid not in 
 (select empid from employeedetails);
 
 -- 47  print total experince in ears months days format 
 
 select concat(timestampdiff(year ,dateofjoining,curdate())," ","years"," ",
			    timestampdiff(month,dateofjoining,curdate())%12," "," months" ," ", 
                floor(timestampdiff(day,dateofjoining,curdate()))%30," ","days") as total_experince from employeedetails;
                
-- 48 return employees who joined in last 11 months 

use video2;
show tables;

select * from employeedetails 
where dateofjoining>=curdate() - interval 11 month;
 
 -- 49 return employees who did not join in january 
 
 select * from employeedetails
 where monthname(dateofjoining)<>'january';
 
 -- 50 return employees who either join on 12 december or 1 january
 
 select * from employeedetails
 where month(dateofjoining) = 12 and day(dateofjoining)=12 or
       month(dateofjoining) = 01 and day(dateofjoining)=1;
       
-- 51 return employees whose salary between min salary + 1000 and max salary -1000

select * from employeesalary s
where s.salary between (select min(salary)from employeesalary)+1000 and
                       (select max(salary) from employeesalary)-1000;
 
 
 
 -- 52 return employees who work in p1 project and order them by salary 
 
 select * from employeedetails e , employeesalary s
 where e.empid = s.empid and 
 s.project ="project a"
 order by salary asc;
 
 
 -- 53  print avergae salary from each role 
 
 select role ,avg(salary) from employeedetails e, employeesalary s 
 group by role; 
 

 -- 54 print count of employees , minum and maximum salary from each role ,
 
 
  select e.role ,count(e.empid) as total_employee , min(s.salary) as minmum_salary ,max(s.salary) as maximum_salary,avg(s.salary) as average_salary
  from employeedetails e, employeesalary s 
  where e.empid =s.empid
 group by e.role; 
 
 
 
 