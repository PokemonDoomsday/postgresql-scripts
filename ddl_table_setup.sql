create table customers (
	username varchar(50) primary key,
	password varchar(50) not null,
	balance numeric default 0
);


create table product_descriptions(
	product_name varchar(50) primary key,
	product_origin varchar(250),
	description varchar(250),
	price numeric check(price >= 0)
);


create table products(
	product_id serial primary key,
	product_name varchar(50) references product_descriptions(product_name)
);


create table cart(
	owner varchar(50) references customers(username) primary key,
	to_checkkout integer[]
);
