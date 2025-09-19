QUERIES
Create database momo_transaction;

Use momo_transaction;

Create table customer(
Customer_id int(11) PRIMARY KEY NOT NULL auto_increment,
Firstname varchar(225),
Lastname varchar(255),
Telephone varchar(255)
);

Create table transaction_category(
category_id int(11) PRIMARY KEY NOT NULL auto_increment,
Category_name varchar(255),
Description varchar(255)
);

Create table transactions(
Transation_id int(11) PRIMARY KEY NOT NULL auto_increment,
Amount int(255) NOT NULL,
Date DATE,
Sender_id int(11),
Receiver_id int(11),
Category_id int(11),
Foreign key (sender_id) references customer(customer_id),
Foreign key (receiver_id) references customer(customer_id),
Foreign key (category_id) references transaction_category(category_id)
);

Create table system_log(
Log_id int(11) PRIMARY KEY NOT NULL auto_increment,
System_log_name varchar(255),
Transaction_id int(11),
Foreign key (Transation_id) references transaction(transaction_id)
);

CRUD OPERATION
insert into customer values(‘1’,’armstrong’,’ivan’,’+250788888888’);
insert into transaction_category values(‘1’,’sending_money’,’money sent’);
insert into transaction values(‘1’,’5000frw’,’20-9-2025’,’1’,’1’,’1’);
Insert into system_log values(‘001’.’transaction made successfully’,’1’);

Select * from transaction;

update transaction set date=’21-10-2025’ where Transaction_id = ‘1’;
delete from customer where customer_id = ‘1’;

