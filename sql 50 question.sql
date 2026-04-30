create database master_data;

use master_data;

create table users(
user_id int  primary key auto_increment,
user_name varchar(20) not null,
email varchar(30) unique,
signup_date date
);

create table products(
 product_id int primary key auto_increment,
 product_name varchar(40) not null,
category varchar(30) ,
price decimal(10,2) 
);



create table orders(
 order_id int primary key auto_increment,
 user_id int,
 order_date date,
 total_amount decimal(10,2),
 foreign key(user_id) references users(user_id)
);

create table sale(
	sale_id int primary key auto_increment,
    order_id int,
    product_id int,
    foreign key(order_id) references orders(order_id),
    foreign key(product_id) references products(product_id)
);



desc users;
desc products;
desc orders;
desc sale;

insert into products(product_name,category,price)
values
('laptop','electronics',50000.00),
('smartphone','electronics',20000.00),
('table','furniture',5000.00),
('chair','furniture',1500.00);

insert into users(user_name,email,signup_date)
values
('rahul','rahul@email.com','2026-01-10'),
('anjali','anajli@email.com','2026-02-15');

select product_name ,price from products
where category= 'electronics' and price < 25000.00;

select product_name from products
where product_name like 's%';

select category, sum(price) as Total_Category_Value from products 
group by category; 

alter table products
add column  stock_quantity int default 10  ;

select product_name , (price*stock_quantity) from products;

select product_name  from products
where stock_quantity>5 
order by price desc;

select product_name, category , price from products  order by price asc
limit 2;

select * from users;
desc users;
insert into users(user_name,signup_date)
values
('himanshu','2026-04-29');

select * from users 
where email is null;

select category ,avg(price) as average_price from products
group by category
having avg(price)>10000;

select category from products;

select product_name , category from products
where category in ('electronics','furniture');

select user_name , signup_date from users 
where signup_date between'2026-01-01'and '2026-01-31';

select user_name , signup_date from users
where month(signup_date) =1 and year(signup_date)=2026;

select product_name,price , (price*10)/100 as discounted_price ,price-(price*10)/100 
as total_price from products where category ='electronics';

select * from products;
select * from sale;

alter table sale
add column sale_date date;

select * from orders ;
INSERT INTO orders (user_id, order_date, total_amount) VALUES
(1, '2026-01-10', 55000.00), -- User 1 ka order
(2, '2026-01-12', 1200.00),  -- User 2 ka order
(3, '2026-01-15', 45000.00); -- User 3 ka order

INSERT INTO sale (order_id, product_id, sale_date) VALUES
(1, 1, '2026-01-10'), -- Order 1 mein Product 1 bika
(2, 3, '2026-01-12'), -- Order 2 mein Product 3 bika
(3, 2, '2026-01-15'), -- Order 3 mein Product 2 bika
(1, 4, '2026-01-10'); -- Order 1 mein ek aur product (4) bika


select * from products; 
select p.product_name,  s.product_id , sale_date
from products  as p
inner join sale as s 
on p.product_id = s.product_id
where sale_date <= now();

select * from users;
select * from products;
select * from orders;
select * from sale;

select u.user_name , o.order_date , p.product_name from users as u
inner join orders as o
on u.user_id = o.user_id 
inner join  sale as s
on o.order_id = s.order_id 
inner join products as p
on s.product_id = p.product_id;

select u.user_name , o.order_id  from users as u
left join orders as o
on u.user_id = o.user_id;
select * from orders;

select u.user_name, u.user_id , sum(o.total_amount) 
from users as u 
inner join orders as o
on u.user_id =o.user_id
group by u.user_name, user_id;


select * from products;
select * from orders;
select * from users;
select* from sale;



insert into users (user_name ,email)
values
('kajal','kajal@email.com');

select * from orders;

select u.user_name  ,coalesce( o.order_id,0) as order_value from users as u
left join orders as o
on u.user_id = o.user_id 
WHERE o.order_id IS NULL;
select * from products;
select * from  sale;

select product_name, price*stock_quantity from products limit 3;

select * from products
where price > (select avg(price) from products);

select * from users;
select * from products;
select * from orders;
select * from sale;


select user_name from users where user_id in 
(select o.user_id  from orders as o
inner join sale as s
on o.order_id =s.sale_id
inner join products as p
on p.product_id =s.product_id 
where p.category ='electronics');


select user_name  ,email from users where  user_id in
(select o.user_id from orders as o
  join sale as s 
  on o.order_id = s.order_id
  join products as p
  on p.product_id = s.product_id
  where p.category ='electronics');


select product_name from products where product_id not in  
(select p.product_id from products p
 join sale as s 
 on p.product_id = s.product_id);
 


 SELECT u.user_name, u.user_id, COUNT(o.order_id) AS total_orders
FROM users AS u
JOIN orders AS o ON u.user_id = o.user_id
GROUP BY u.user_name, u.user_id
HAVING COUNT(o.order_id) > 2;

ALTER TABLE sale ADD COLUMN quantity INT;
UPDATE sale SET quantity = 2 WHERE sale_id = 1; -- Laptop (2 bika)
UPDATE sale SET quantity = 1 WHERE sale_id = 2; -- Table (1 bika)
UPDATE sale SET quantity = 3 WHERE sale_id = 3; -- Smartphone (3 bika)
UPDATE sale SET quantity = 1 WHERE sale_id = 4; -- Chair (1 bika)

select p.product_name , p.stock_quantity - coalesce(sum(s.quantity),0)
from products as p
left join  sale as s
on p.product_id = s.sale_id 
group by p.product_name, p.product_id ,p.stock_quantity;

select p.product_name , p.stock_quantity -coalesce(sum(s.quantity),0)
from products as p 
left join  sale as s
on p.product_id = s. sale_id 
group by p.product_name , p.product_id , p.stock_quantity 
having p.stock_quantity >5;


select user_name  from users 
where user_id in (
select u.user_id  from users as u
left join orders as o
on u.user_id = o.user_id 
where month(o.order_date)>01 and year (o.order_date) >=2026 
and email not like  '%@email.com');

select ucase(product_name) as capital_name , left(category, 3) as first_three_words 
from products;

select concat_ws('-', product_name , category) as product__info from products;

 select product_name ,
case 
 when price >40000 then 'premium'
 when price between 10000 and 40000 then 'mid-range'
 else 'budget'
 end as price_category
 from products;
 
 update users
 set email = 'himanshu@sql.com'
 where user_id = 3;
 
select product_name , price + ((price*18)/100) as price_with_tax from products;


update products
set price = price + ((price *10)/100),
    stock_quantity = stock_quantity-5
 where category ='electronics';

SET SQL_SAFE_UPDATES = 0;

select * from products;

select user_name from users 
where email like '%sql%' and user_id >2;

select product_name , category ,price from products 
where category = 'electronics' order by price desc
limit 2 ;

select count(distinct user_id) from orders;

ALTER TABLE products ADD COLUMN created_at DATE;

UPDATE products SET created_at = '2026-01-10' WHERE product_id = 1;
UPDATE products SET created_at = '2026-02-15' WHERE product_id = 2;
UPDATE products SET created_at = '2026-03-20' WHERE product_id = 3;
UPDATE products SET created_at = '2026-04-25' WHERE product_id = 4;
UPDATE products SET created_at = '2025-12-01' WHERE product_id = 5;

select product_name from products
where datediff(curdate(), created_at) > 100;

select product_name  from products 
where stock_quantity is null ;

select product_name , price from products ;

select u.user_name , o.order_id from users u
inner join orders o
on u.user_id =o.user_id;

select u.user_name , o.order_date from users u
left join orders o
on u.user_id = o.user_id 
where order_date > '2026-04-20';

select u.user_name, p.product_name, p.price from users as u
inner join orders as o
on u.user_id =o.user_id 
join  sale as s
on s.order_id =o.order_id
join products as p
on p.product_id = s.product_id;


select u.user_name ,(p.price -o.total_amount) as total_spent from users as u
left join orders as o
on u.user_id =o.user_id
inner join sale as s
on s.order_id = o.order_id
inner join products as p
on p.product_id = s.product_id;

SELECT u.user_name, SUM(o.total_amount) AS total_spent
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.user_name;

select u.user_name , u.user_id,sum(o.total_amount) as total_spent
from  users as u
left join orders as o
on u.user_id = o.user_id
group by u.user_name , u.user_id;

select u.user_name from users as u
left join orders as o
on u.user_id = o.user_id
where order_id is null;

select category , count(category) as total_count from products 
group by category
having count(category) >3;

select product_name , price from products where price >
(select avg(price) from products );


select product_name , category from products where price = 
(select max(price) from products) ;


update products 
set price = price - ((price*10)/100)
where category = 'electronics';

delete from  products 
where stock_quantity=0 and
 product_id not in 
 (select product_id from sale );
 
 select * from products;
 
 select * from sale;

select product_name,category , price ,dense_rank() over (partition by category order by price desc) 
as ranking_product from products;
 
SELECT user_id, sum(total_amount) as total_spent,
       DENSE_RANK() OVER (ORDER BY sum(total_amount) DESC) as customer_rank
FROM orders
GROUP BY user_id;

SELECT user_id, order_id, order_date
FROM (
    SELECT user_id, order_id, order_date,
           ROW_NUMBER() OVER(PARTITION BY user_id ORDER BY order_date desc) as order_num
    FROM orders
) as subquery
WHERE order_num = 1;

select * from users;
SELECT 'user_id','user_name','email','signup_date'
UNION ALL
SELECT user_id, user_name, email, signup_date FROM users
INTO OUTFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\cbse_full_data.csv'
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
SHOW VARIABLES LIKE 'secure_file_priv';

create table cbse_data(
  school_name varchar(30) ,
  affliation_no int unique ,
  website varchar(100),
  affliation_from date,
  affliation_to date,
  principal_name varchar(30)
);

load data local infile "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
into table cbse_data
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows ;

use master_data;

select * from cbse_data;
SELECT * FROM cbse_data LIMIT 10;

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@school_name, @affliation_no, @website, @affliation_from, @affliation_to, @principal_name)
SET 
school_name = @school_name,
affliation_no = @affliation_no,
website = @website,
affliation_from = STR_TO_DATE(@affliation_from, '%d/%m/%Y'),
affliation_to = STR_TO_DATE(@affliation_to, '%d/%m/%Y'),
principal_name = @principal_name;
SHOW WARNINGS;
SELECT COUNT(*) FROM cbse_data;


select * from cbse_data;

drop table cbse_data;
CREATE TABLE cbse_data(
  school_name varchar(100),
  affliation_no int,
  website varchar(200),
  affliation_from date,
  affliation_to date,
  principal_name varchar(100)
);

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@school_name, @affliation_no, @website, @affliation_from, @affliation_to, @principal_name)
SET 
school_name = @school_name,
affliation_no = NULLIF(@affliation_no, ''),
website = @website,
affliation_from = STR_TO_DATE(@affliation_from, '%d/%m/%Y'),
affliation_to = STR_TO_DATE(@affliation_to, '%d/%m/%Y'),
principal_name = @principal_name;
select * from cbse_data;

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

show warnings;

drop table cbse_data;

CREATE TABLE cbse_data(
  school_name varchar(200),
  affliation_no varchar(20),
  website varchar(200),
  affliation_from varchar(20),
  affliation_to varchar(20),
  principal_name varchar(200)
);

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from cbse_data;

DROP TABLE cbse_data;

CREATE TABLE cbse_data(
  school_name varchar(200),
  affliation_no varchar(20),
  website varchar(200),
  affliation_from varchar(20),
  affliation_to varchar(20),
  principal_name varchar(200)
);

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

select * from cbse_data;

SELECT * FROM cbse_data LIMIT 5;

SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE "C:/Users/hs577/Downloads/cbse_full_data (3).csv"
INTO TABLE cbse_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from cbse_data;

SELECT school_name 
FROM cbse_data 
WHERE YEAR(affliation_to) IN (2026, 2027);


SELECT COUNT(*) 
FROM cbse_data 
WHERE affliaton_to IS NULL;

SELECT affliation_to 
FROM cbse_data 
LIMIT 20;

SELECT school_name 
FROM cbse_data 
WHERE YEAR(STR_TO_DATE(affliation_to, '%d/%m/%Y')) IN (2026, 2027);
use master_data;

select * from users;

create table users_copy like users;
select * from users_copy;

desc users_copy;

create table users_copy2 as
select * from users;

select * from users_copy2;

insert into users_copy 
select * from users;

select * from users ;

drop table users_Copy2;

create table users_copy
select user_name from users;

select * from users_copy;

create table users_copy2 like users;

select * from users_copy2;

create table copy_users3
select  user_id from users
where 1=0;

select * from copy_users3;

create table copy_users4
select * from users;

select * from copy_users4;


create table copy_users5
select user_id from users;

select * from copy_users5 order by user_id asc;

show tables;








