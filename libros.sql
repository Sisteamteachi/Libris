create database libros;
use libros;
create table User(
idUser int primary key auto_increment,
name varchar(70),
old_year int,
addres varchar(50),
email varchar(50),
password varchar(50));

create table Book(
idBook int primary key auto_increment,
img text,
name varchar(50),
price decimal(10,2)
);

create table Reserve(
id int primary key auto_increment,
idUser int,
idBook int,
fecha datetime default current_timestamp,
foreign key (idUser) references User(idUser),
foreign key (idBook) references Book(idBook))
