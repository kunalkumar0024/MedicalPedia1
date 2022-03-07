
create database med_store; 
use med_store;
create table musers(
uname varchar(20) not null,
uage int,
udob date,
uemail varchar(50) primary key,
upassword varchar(50) not null
);
desc musers;

use med_store;
select * from musers;

create table products(
pid int primary key auto_increment,
pname varchar(50) not null,
pprice decimal not null,
pimage longblob not null
) ;
desc products;

select * from products;