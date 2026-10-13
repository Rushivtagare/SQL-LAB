use bank;
select * from accounts;
alter table accounts add column c_id int;
select * from customer;
alter table accounts add constraint Fk foreign key(c_id) references customer(CutomerID);
