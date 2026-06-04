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
  
  
-- 6. 


