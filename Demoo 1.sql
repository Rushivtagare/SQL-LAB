create table new1(
id int);

select * from new1;

alter table new1 add column name varchar(100);

alter table new1 rename column name to f_name;

alter table new1 drop column f_name;

rename table  new1 to nx;

select * from nx;

alter table nx add column name varchar(100);

alter table nx rename column name to s_name;

Select * from nx;