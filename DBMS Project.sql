REM   Script: DBMS Project: Video Game Distribution System
REM   A database for a video game distribution system

create table Customer(Customer_ID varchar(10) Primary Key, 
Customer_Name varchar(25), 
Customer_Password varchar(30), 
Customer_Email varchar(40), 
Country varchar(30), 
Customer_Age int 
);

create table Previous_Purchases( 
Customer_ID varchar(10), 
Purchase_ID varchar(10) Primary Key, 
Game_ID varchar(10), 
Date_of_Purchase date, 
Price float, 
Foreign Key (Customer_ID) References Customer(Customer_ID) 
);

create table Publisher( 
Publisher_ID varchar(10) primary KEY, 
Publisher_Name varchar(20), 
Password varchar(30), 
Email varchar(40), 
Phone varchar(10) 
);

create table Developer( 
Dev_ID varchar(10) primary KEY, 
Name varchar(20), 
Password varchar(30), 
Email varchar(40), 
Phone varchar(10), 
Publisher_ID varchar(10), 
foreign key(Publisher_ID) references Publisher(Publisher_ID) 
);

create table Sale( 
Sale_ID varchar(10) PRIMARY KEY, 
Offer_Percent float, 
sale_schedule date UNIQUE 
);

create table Games( 
Game_ID varchar(10) primary KEY, 
Game_Name varchar(20), 
Publisher_ID varchar(10), 
Dev_Id varchar(10), 
Genre varchar(10), 
Rating int, 
Requirements varchar(20), 
Price float, 
Sale_Schedule date, 
Age_Rating float, 
Description varchar(50), 
FOREIGN KEY(Publisher_ID) REFERENCES Publisher(Publisher_ID), 
FOREIGN KEY(Sale_Schedule) REFERENCES Sale(sale_schedule) 
);

create table Payment_Gateway( 
Game_ID varchar(10), 
Customer_ID varchar(10), 
Sale_ID varchar(10), 
Price float, 
Purchase_ID varchar(10), 
Date_of_Purchase date, 
FOREIGN KEY(Game_id) REFERENCES Games(Game_ID), 
FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID), 
FOREIGN KEY(Sale_ID) REFERENCES Sale(Sale_ID), 
FOREIGN KEY(Purchase_ID) REFERENCES Previous_Purchases(Purchase_ID) 
);

insert into Customer values('Raj1026#28', 
'Rajesh Kumar', 
'Rajesh!2001', 
'rajcool@gmail.com', 
'India', 
'26' 
);

insert into Customer values('Adi2085%19', 
'Aditya Sharma', 
'Aditya*3032', 
'adityas@yahoo.com', 
'India', 
'19' 
);

insert into Customer values('Ish9405%20', 
'Isha Saxena', 
'ILMF@*112', 
'isha2001@gmail.com', 
'India', 
'22' 
);

insert into Customer values('Abh2004$68', 
'Abhinav Kumar', 
'Abhi$$103', 
'cooldudeabhi@gmail.com', 
'India', 
'16' 
);

insert into Customer values('Ada3049#13', 
'Adam Parker', 
'Adamexpert@1654', 
'adamparker2056@yahoo.com', 
'United States of America', 
'18' 
);

insert into Customer values('Yas5903#64', 
'Yash Renwa', 
'GGyash#12', 
'yashrenwa@gmail.com', 
'India', 
'20' 
);

insert into Customer values('Sar3956#84', 
'Sarah Goldberg', 
'Whysoserious#1337', 
'sarahg334@gmail.com', 
'United Kingdom', 
'21' 
);

insert into Customer values('Aga1302$22', 
'Agastya Sharma', 
'Agastya#20', 
'agastyasharma11@gmail.com', 
'India', 
'19' 
);

insert into Customer values('Ani2245!49', 
'Anirudh Verma', 
'Justsocasual@223', 
'anirudhver214@gmail.com', 
'India', 
'23' 
);

insert into Customer values('Ary3302#45', 
'Aryan Abraham', 
'Aryan#ayaan220', 
'pythagoraskumar2203@gmail.com', 
'India', 
'38' 
);

insert into Previous_Purchases values('Raj1026#28', 
'243#$10292', 
'101', 
DATE '2010-03-12', 
'520.00' 
);

insert into Previous_Purchases values('Adi2085%19', 
'375#$38502', 
'105', 
DATE '2011-11-20', 
'520.00' 
);

insert into Previous_Purchases values('Ish9405%20', 
'193#$10345', 
'101', 
DATE '2011-05-06', 
'520.00' 
);

insert into Previous_Purchases values('Abh2004$68', 
'496#$05637', 
'103', 
DATE '2015-06-27', 
'120.00' 
);

insert into Previous_Purchases values('Abh2004$68', 
'496#$20075', 
'104', 
DATE '2016-11-03', 
'220.00' 
);

insert into Previous_Purchases values('Ada3049#13', 
'205#$20033', 
'108', 
DATE '2010-03-12', 
'320.00' 
);

insert into Previous_Purchases values('Ani2245!49', 
'103#$67593', 
'110', 
DATE '2017-05-30', 
'920.00' 
);

insert into Previous_Purchases values('Ary3302#45', 
'186#$73950', 
'103', 
DATE '2013-03-21', 
'120.00' 
);

insert into Previous_Purchases values('Ary3302#45', 
'299#$28564', 
'104', 
DATE '2013-03-21', 
'220.00' 
);

insert into Previous_Purchases values('Ary3302#45', 
'495#$10375', 
'107', 
DATE '2014-04-05', 
'520.00' 
);

insert into Publisher values('1001','Minato 
Namikaze','abcdef','minatonamikaze_4th@gmail.com','9420654179');

insert into Publisher values('1002','Kushina 
Uzumaki','abcdef','kushinauzumaki_4th@gmail.com','9420654179');

insert into Publisher values('1003','Hashirama 
Senju','abcdef','hashiramasenju_1st@gmail.com','9420654179');

insert into Publisher values('1004','Tobirama 
Senju','abcdef','tobiramasenju_2nd@gmail.com','9420654179');

insert into Publisher values('1005','Tsunade 
Senju','abcdef','tsunadesenju_5th@gmail.com','9420654179');

insert into Publisher values('1006','Kakashi 
Hatake','abcdef','kakashihatake_6th@gmail.com','9420654179');

insert into Publisher values('1007','Naruto 
Uzumaki','abcdef','minatonamikaze_4th@gmail.com','9420654179');

insert into Publisher values('1008','Konohamaru 
Sarutobi','abcdef','konahamarusarutobi_8th@gmail.com','9420654179');

insert into Publisher values('1009','Sarada 
Uchiha','abcdef','saradauchiha_9th@gmail.com','9420654179');

insert into Publisher values('1010','Hiruzen 
Sarutobi','abcdef','hiruzensarutobi_3rd@gmail.com','9420654179');

insert into developer values('1','Clark Kent','efgh','clarkkent@gmail.com','9429687502','1001');

insert into developer values('2','Bruce 
Wayne','efgh','brucewayne@gmail.com','9429687502','1003');

insert into developer values('3','Diana 
Prince','efgh','dianaprince@gmail.com','9429687502','1009');

insert into developer values 
('4','Oliver Queen','efgh','oliverqueen@gmail.com','9429687502','1006');

insert into developer values 
('5','Hal Jordan','efgh','haljordan@gmail.com','9429687502','1002');

insert into developer values 
('6','Jonn Jonnz','efgh','jonnjonnz@gmail.com','9429687502','1008');

insert into developer values 
('7','Billy Batson','efgh','billybatson@gmail.com','9429687502','1007');

insert into developer values 
('8','Arthur Curry','efgh','arthurcurry@gmail.com','9429687502','1004');

insert into developer values('9','Zatanna','efgh','zatanaa@gmail.com','9429687502','1005');

insert into developer values 
('10','Barbara Gordon','efgh','barbaragordon@gmail.com','9429687502','1010');

insert into Sale values('#111',8.5,DATE'2010-12-25');

insert into Sale values('#222',10.5,DATE'2010-6-30');

insert into Sale values('#333',2.55,DATE'2010-11-28');

insert into Sale values('#444',6.75,DATE'2010-05-27');

insert into Sale values('#555',3.35,DATE'2010-01-3');

insert into Games values 
('101','Valorant','1001','1','Action',4,'8GB RAM',520.00,DATE'2010-12-25','16','Good');

insert into Games values 
('102','Call of Duty','1002','2','Action',5,'8GB RAM',20.00,DATE'2010-6-30','16','Good');

insert into Games values 
('103','Cricket','1003','3','Action',3,'8GB RAM',120.00,DATE'2010-11-28','16','Good');

insert into Games values 
('104','Fifa','1006','4','Action',4,'8GB RAM',220.00,DATE'2010-05-27','16','Good');

insert into Games values 
('105','PubG','1004','6','Action',2,'8GB RAM',520.00,DATE'2010-01-3','16','Good');

insert into Games values 
('106','FauG','1005','7','Action',1,'8GB RAM',120.00,DATE'2010-12-25','16','Good');

insert into Games values 
('107','Mario','1007','5','Action',0,'8GB RAM',520.00,DATE'2010-6-30','16','Good');

insert into Games values 
('108','Sonic','1008','8','Action',4,'8GB RAM',320.00,DATE'2010-11-28','16','Good');

insert into Games values 
('109','Prince of Persia','1010','9','Action',5,'8GB RAM',720.00,DATE'2010-05-27','16','Good');

insert into Games values 
('110','Purble Palace','1009','10','Action',4,'8GB RAM',920.00,DATE'2010-01-3','16','Good');

insert into Payment_Gateway values 
('101','Raj1026#28','#111',1000.00,'243#$10292',DATE'2011-12-25');

insert into Payment_Gateway values 
('102','Adi2085%19','#222',999.00,'375#$38502',DATE'2011-6-30');

insert into Payment_Gateway values 
('103','Ish9405%20','#333',999.00,'299#$28564',DATE'2011-11-28');

insert into Payment_Gateway values 
('104','Abh2004$68','#444',1250.99,'496#$05637',DATE'2011-05-27');

insert into Payment_Gateway values 
('105','Ada3049#13','#555',1150.99,'205#$20033',DATE'2014-01-3');

insert into Payment_Gateway values 
('106','Ani2245!49','#111',3150.99,'103#$67593',DATE'2012-12-25');

insert into Payment_Gateway values 
('107','Ary3302#45','#222',1650.99,'186#$73950',DATE'2011-6-30');

insert into Payment_Gateway values 
('108','Ary3302#45','#333',250.99,'299#$28564',DATE'2011-11-28');

insert into Payment_Gateway values 
('109','Ary3302#45','#444',3220.99,'495#$10375',DATE'2012-05-27');

insert into Payment_Gateway values 
('110','Abh2004$68','#555',350.99,'496#$20075',DATE'2013-01-3');

