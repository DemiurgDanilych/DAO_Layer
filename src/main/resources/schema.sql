CREATE SCHEMA DAO_Netology;

CREATE TABLE DAO_Netology.customers
(
    id           int auto_increment,
    name         varchar(50) not null,
    surname      varchar(50) not null,
    age          int check ( age > 0 ),
    phone_number int,
    primary key (id)
);

CREATE TABLE DAO_Netology.orders
(
    id           int auto_increment,
    date         timestamp                not null default now(),
    customer_id  int,
    product_name varchar(50),
    amount       int check ( amount > 0 ) not null,
    primary key (id),
    foreign key (customer_id) references customers (id)
);

insert into DAO_Netology.customers(name, surname, age, phone_number)
VALUES ('Ivan', 'Ivanovich', 26, 555);

insert into DAO_Netology.customers(name, surname, age, phone_number)
VALUES ('Petr', 'antal', 62, 444);

insert into DAO_Netology.orders(customer_id, product_name, amount)
VALUES (1, 'tapochki', 100500);

insert into DAO_Netology.orders(customer_id, product_name, amount)
VALUES (2, 'sapogi', 500);