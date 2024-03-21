
-- 3. creating Db 
create database MYDB;
use MYDB;
create table customers(
cust_id int primary key auto_increment,
cust_firstname varchar (50)not null,
cust_lastname varchar(50) not null,
cust_nickname varchar (50),
cust_age int ,
cust_gender char (50),
cust_country varchar (50) null null,
cust_sallary dec (1,10) not null
);

-- 4. add modify and delete DDL comand

alter table customers 
add bonus int  not null;

alter table customers
modify column  cust_age int not null;
 alter table customers
  drop column cust_nickname,
  drop column bonus;
  
  RENAME table  customers TO customer; 
  
  drop table customer; 
  drop database MYDB;
  create database MYDB;
  use MYDB;
  create table customers(
cust_id int (50)auto_increment,
cust_firstname varchar (50)not null,
cust_lastname varchar(50) not null,
cust_nickname varchar (50),
cust_age int (50),
cust_gender char (50),
cust_country varchar (50) null null,
cust_sallary dec not null,
primary key (cust_id));

alter table customers
  drop column cust_nickname;
-- 5. insert, updet, delete a data in to a table 

insert into customers (column1, column2, column3, column4, column5, column6, column7)
 value(values1, values2, values3, Values4, Values5, Values6, Values7);
  
 insert into customers(cust_id, cust_firstname, cust_lastname,cust_age, cust_gender, cust_country, cust_sallary)
values( '111', 'Nike', 'Jones', '28', 'M', 'USA', 40000);
insert into customers(cust_id, cust_firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('222', 'Antony', 'Martial','39', 'M', 'France', 50000);
insert into customers(cust_id, cust_firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('333', 'Rose', 'Geller', '48', 'M', 'uzbekistan', 75000);
insert into customers(cust_id, cust_firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('444','Chandler', 'Bing','35', 'M', 'unknown', 80000);
insert into customers(cust_id, cust_firstname,cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('555','Rachel', 'Green', '33', 'F', 'Kazakhstan', 54000);
insert into customers(cust_id, cust_firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('666','Nick', 'Jones', '41', 'M', 'USA', '100000');
insert into customers(cust_id, cust_firstname, cust_lastname,  cust_age, cust_gender, cust_country, cust_sallary)
values('777','poul', 'pogba', '30', 'M', 'France', 54000);
insert into customers(cust_id, cust_firstname, cust_lastname, cust_age, cust_gender, cust_country, cust_sallary)
values('888','Joey', 'Tribbiani', '27', 'M', 'Ethiopia', 75000); 
-- 

 UPDATE customers
SET cust_country = 'Ethiopia'
WHERE cust_id =333;

 UPDATE customers
SET cust_country = 'Ethiopia'
WHERE cust_id =444;

 UPDATE customers
SET cust_country = 'Ethiopia'
WHERE cust_id =555;
  -- we have to turnoff safemode for this(Edit, preferance, sql editor)
 delete
 from customers
where cust_id= 666;
 -- 6 TCL agregeat fucnctionand special opreaters 
 
 select * from customers;
 select * from customers  
 where cust_country ='Ethiopia';
select *
from customers
where cust_sallary > 5000000;
 SELECT cust_firstname, cust_lastname, cust_country
 FROM customers
 WHERE cust_gender= 'm';
 SELECT DISTINCT CUST_COUNTRY
 FROM CUSTOMERS;
 
 SELECT  cust_firstname, cust_lastname, cust_country
 FROM customers
 WHERE cust_gender= 'm'
 ORDER BY cust_firstname, cust_lastname DESC;
 -- savepoint means temporary save.--  
 SELECT * 
 FROM CUSTOMERS
 WHERE CUST_GENDER= 'F' AND CUST_SALLARY >100000 AND CUST_COUNTRY = 'ETHIOPIA'; 
 SELECT * 
 FROM CUSTOMERS WHERE CUST_COUNTRY= 'ETHIOPIA' OR 'UZBEKISTAN'; 
 select min(CUST_salLary) as minimumsalary
 from CUSTOMERS;
 select MAX(CUST_salLary) as maximumsalary 
 from CUSTOMERS;
 SELECT count(*) as numberofcustomers   
 FROM CUSTOMERS;
select avg(CUST_salLary) as 'average salLary'

from CUSTOMERS;
SELECT SUM(CUST_SALLARY) as totalsalary 
FROM CUSTOMERS;
select *
from CUSTOMERS
where CUST_sallary between 2000000 AND 8000000;
SELECT *
 FROM CUSTOMERS
 WHERE CUST_FIRSTNAME LIKE 'p%'; 
 SELECT CUST_FIRSTNAME, CUST_LASTNAME
 FROM customers
 WHERE CUST_FIRSTNAME LIKE '_n%' and CUST_LASTNAME like '%l';
 SELECT *
 FROM customers
 WHERE CUST_LASTNAME LIKE 'P%-A';
 select * FROM CUSTOMERS
 where CUST_COUNTRY IN  ('ETHIOPIA', 'USA','FRANCE');
 
 -- 7. special operator and SQL Join-- 
 
 use mydb;
 create table address(
cust_zip varchar(50) not null,
 cust_street varchar(50)not null,
 cust_city varchar(50)not null,
 cust_state varchar(50),
 cust_ID int null,
 unique (cust_zip),
 foreign key (cust_ID) references customers(cust_ID)
 );
 drop table address;
 
 insert into address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values(1000, 'Megenaga', 'Addis Abeba', 'Addis Abeba', 444);
 insert into address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 2000, '4-kilo', 'Addis Abeba', 'Addis Abeba', 555);
insert into address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 3000, '41-eyesus', 'Addis Abeba', 'Addis Abeba', 888);
insert into address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 4000, '6-kilo', 'Addis Abeba', 'Addis Abeba', 333);
insert into Address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 5000, '01-st', 'san Diego', 'california', null);
 insert into Address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 6000, 'kU-road', 'Los Angeles', 'california', null);
insert into Address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 7000, 'JK-road', 'Miami', 'Florida', null);
insert into Address(cust_zip, cust_street, cust_city, cust_state, cust_ID)
values( 8000, 'Lj-road', 'Atlanta', 'Georgia', null);
select * from customers;
select * from address;

-- SQL joint inner join, left outer join, right outer join and full outer join-- 
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
inner join address
on customers.cust_id= address.cust_id;

select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
left outer join  address
on customers.cust_id= address.cust_id;
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
right outer join address
on customers.cust_id= address.cust_id;
-- full outer join   
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
left outer join  address
on customers.cust_id= address.cust_id
union 
select customers. cust_id, customers.cust_firstname, address.cust_zip, address. cust_street
from customers
right outer join address
on customers.cust_id= address.cust_id;

-- create index , clusters and non_clusters index 
create view cust_view as
select *
from customers
where cust_sallary>=10000;
select * 
from cust_view;



 
 
 
 
 
 

 

 

 
 
 
 
 
 
 
 select contact(contactfirstname,'',lastname) as 'studentname',
 cuntry, min(sallary) as 'lowestsalary'
 from infostudents
 where country= usa;
 select min(salary) as 'lowestsallary'
 from infostudents
 where country= usa;
 select id,
 max(salary) as 'highestsalary'
 from infostudent
 where country=usa;
 select count(id)
 from student info
 where country= 'usa';
 select avg(salary) as 'average salary'
 from studentinfo
 where city= 'addis abeba';
 select sum(salary) as 'total salary'
 from studentinfo
 where city= 'addis abeba';
 
 select *
 from customes
 where cust_id= 333
 -- ??????
  -- select * retrive data from the database
  
  

 select *
from CUSTOMERS
where salary between 50000 AND 80000;
 
 SELECT *
 from customers
 where CUST-GENDER is null;
 
 SELECT FIRST_NAME, LAST_NAME, CITY
 FROM INFOSTUDENTS
 WHERE FIRST_NAME LIKE '%A';
 SELECT FIRST_NAME, LAST_NAME, CITY
 FROM INFOSTUDENTS
 WHERE FIRST_NAME LIKE 'A%';
 SELECT FIRST_NAME, LAST_NAME, CITY
 FROM INFOSTUDENTS
 WHERE FIRST_NAME LIKE '%A' and last_name like '_a';
 
 select* from infostudents
 where country IN( 'india', 'algeria', 'brazil');
 
 select* from infostudents
 where country = 'india' or country = 'algeria' or country= 'brazil';
 select firstname 
 from infostudents
 where exists( select parentsname from infostudents where studentsid = 05
 and price<250000);
 select productname
 from products
 where productid= any ( select productid from orderdetails where quality > 99);
 select all producta
 from product
 where true;
 