drop database ecommerce_record;
create database ecommerce_record;
use ecommerce_record;

create table users(
user_id varchar(10) not null,
user_name varchar(45) not null,
user_email varchar(45) not null,
user_password varchar(45) not null,
user_address varchar(45),
is_vendor tinyint(1),
primary key (user_id)
);

create table orders(
order_id int not null,
total_value double not null,
order_quantity int not null,
reward_point int not null,
vendor_id varchar(10) not null,
customer_id varchar(10) not null,
primary key (order_id),
foreign key (vendor_id) references users(user_id),
foreign key (customer_id) references users(user_id)
);

create table products(
product_id varchar(45) not null,
product_name varchar(45) not null,
product_description varchar(100) not null,
product_price double not null,
emi_available varchar(10) not null,
vendor_id varchar(10),
primary key (product_id),
foreign key (vendor_id) references users(user_id)
);

drop table customer_leaderboard;
drop table orders;
drop table products;
drop table users;
drop database ecommerce_record;