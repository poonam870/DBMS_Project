/* creating database */
create database project;
/* using created database */
use project;
/*creating table for USER */

create table USER (
user_id varchar (10) primary key,
fname varchar(20) not null,
lname varchar (20),
dob date not null,
gender char(6) not null,
pincode int not null);
/* creating database */
create database project;
/* using created database */
use project;
/*creating table for USER */

create table USER (
user_id varchar (10) primary key,
fname varchar(20) not null,
lname varchar (20),
dob date not null,
gender char(6) not null,
pincode int not null);
/* inserting data into user */
insert into user values(1122,"Poonam","Kaithwas","2002-07-09","Female",229410);
insert into user values(1342,"Purnima","Singh","2002-07-13","Female",209110);
insert into user values(1152,"Pratibha","Maurya","2002-05-22","Female",259110);
insert into user values(1142,"Akash","Singh","2002-08-22","Male",231011);


/* Creating USER_PINCODE table*/
create table user_pincode(
pincode int primary key,
city varchar(20),
state varchar (20)
);
/* inserting values into user_pincode table */
insert into user_pincode values(229410,"Pratpgarh","U.P");
insert into user_pincode values(209110,"Kanpur","U.P");
insert into user_pincode values(231011,"Pilibhit","U.P");

/*creating table for user_contact */
create table user_contact (
user_id varchar (10),
mobile_no varchar (10) not null,
foreign key(user_id) references user(user_id)
);

/* inserting values into user_contact table */
insert into user_contact values(1122,9044198961);
insert into user_contact values (1122,8417057984);
insert into user_contact values (1142,9099145689);

/* Creating ticket table  */

create table ticket (
PNR_NO varchar (20) primary key,
Train_no varchar (20) not null,
class varchar (20) not null,
passenger_name varchar (20) not null,
seat_no varchar (10)
);

/*Inserting data into ticket table */
insert into ticket values(4239269912,12651,"SLEEPER","Poonam",35);
insert into ticket values(4239269913,12651,"SLEEPER","Purnima",35);
insert into ticket values(4239269911,12651,"2AC","Pratibha",35);

/* creating table ticket_train */
create table ticket_train (
train_no varchar(10) primary key,
source varchar(10) not null,
destination varchar (10) not null,
date_time datetime
);
/*Inserting data into table */
insert into ticket_train values (12651,"delhi","lucknow","2022-12-20 03:10:10");
insert into ticket_train values (12652,"Vijyawada","lucknow","2022-12-22 03:10:10");
insert into ticket_train values (1781,"jhansi","lucknow","2023-01-10 02:10:10");
/* creating table payment */
create table payment (
transcation_id varchar (20),
Account_id int,
amount real,
PNR_NO varchar (20),
foreign key (PNR_NO) references ticket (PNR_NO)
);
/*Inserting data into table */
insert into payment values (423923,2011001001,1220.3,4239269912);
insert into payment values (423922,2011001001,1220.3,4239269913);
insert into payment values (421121,2011001001,1220.3,4239269911);

/* creating Train table */
create table train (
train_no varchar (20) primary key,
train_name varchar (20) not null,
arrival_time time,
dept_time time,
source varchar(20),
destination varchar(20),
seat_available int
);

/*Inserting values into train table */
insert into train values (12341,"AP EXPRESS","12:00:00","12:16:11","AP","LUCKNOW",140);
insert into train values (12321," SATABDI EXPRESS","2:10:00","13:16:11","AP","ALLAHABAD",139);
insert into train values (12343,"LJN MASS EXPRESS","3:01:50","1:16:11","AP","KANPUR",190);
/*creating table user_train */
create table user_train (
user_id varchar (10),
train_no varchar (20),
foreign key(user_id) references USER (user_id),
foreign key(train_no) references train(train_no),
primary key (user_id, train_no)
);

/* inserting values into tables */
insert into user_train values (1122,12341);
insert into user_train values (1122,123421);
insert into user_train values (1342,12343);

/* creating class table */
create table  class (
train_no varchar (20),
class_type varchar (10),
fare real,
foreign key(train_no) references train(train_no)
);

/*Inserting values into table class */

insert into class values(12341,"SLEEPER",700);
insert into class values(12343,"2AC",2000);
insert into class values(12341,"SLEEPER",700);

//SQL Query:
1.select *from user natural join user_contact natural join user_pincode;
2.delete from payment where PNR_NO="4239269912";

3. delete from ticket where PNR_NO="4239269912";

























