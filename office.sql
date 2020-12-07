create database office;
use office;
create table employes(
id int ,
Name varchar(20),
age int,
address varchar(20),
salary int,
primary key (id)
);

insert into employes
values ('1' , 'Umair' , '25' , 'Islamabad' , '20000' );
insert into employes
values ('2' , 'Ahmed' , '23' , 'Mirpur'  ,  '20000' );
insert into employes
values ( '3' , 'Owais' , '26' , 'Rawalpindi' , '50000' );
insert into employes
values ( '4' , 'Hamza' , '15' , 'Rawalpindi' , '30000' );
insert into employes
values ( '5' , 'Wajahat' , '24' , 'Sohawa' , '15000');
insert into employes
values ('6' , 'usman' , '22' , 'Karachi' , '32000' );

select * from employes;

