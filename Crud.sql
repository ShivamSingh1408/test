create	database demo1;

use demo1;

create table students
(stu_id int primary key,
 stu_name varchar (30),
age int, gender char (1),doa date,city varchar (20));

insert into students values
(101,"Shivam",22,"M","2022-06-06","Mumbai"),
(102,"Anish",24,"M","2022-06-10","Pune"),
(103,"Tania",25,"F","2022-07-04","Mumbai"),
(104,"Vidit",28,"M","2022-07-30","Nasik"),
(105,"Tanmay",32,"M","2022-08-02","Banglore");

select * from students;

select stu_name,age,city from students;

select * from students order by city;
select * from students order by city desc;

select * from students where city ='Mumbai';
select * from students where city ='Mumbai' and age =22;
select * from students where city ='Mumbai' or age >25;

select stu_name, char_length(stu_name) as total_len from students;

select stu_id,stu_name, concat(stu_name," ",age," ",city) as name_age_city from students;

update students set city = 'New York' where stu_id =102;
select * from students where stu_id=102;

delete from students where stu_id =102;
select * from students;