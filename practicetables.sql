Create database if not exists learndb;
use learndb;
CREATE TABLE Authors(AuthorId INTEGER primary key, 
                                Name VARCHAR(70));

insert into Authors values(1,'J K Rowling');
insert into Authors values(2,'Thomas Hardy');
insert into Authors values(3,'Oscar Wilde');
insert into Authors values(4,'Sidney Sheldon');
insert into Authors values(5,'Alistair MacLean');
insert into Authors values(6,'Jane Austen');
insert into Authors values(7,'Chetan Bhagat');
insert into Authors values(8,'Oscar Wilde');



CREATE TABLE Books(
             BookId INTEGER primary key, 
             Title VARCHAR(50),
             AuthorId INTEGER, foreign key (authorid) references authors(authorid));


insert into Books values(1,'Harry Potter and the Philosopher\'s Stone',1);
insert into Books values(2,'Harry Potter and the Chamber of Secrets',1);
insert into Books values(3,'Harry Potter and the Half-Blood Prince',1);
insert into Books values(4,'Harry Potter and the Goblet of Fire',1);

insert into Books values(5,'Night Without End',5);
insert into Books values(6,'Fear is the Key',5);
insert into Books values(7,'Where Eagles Dare',5);

insert into Books values(8,'Sense and Sensibility',6);
insert into Books values(9,'Pride and Prejudice',6);
insert into Books values(10,'Emma',6);
insert into Books values(11,'Five Point Someone',7);
insert into Books values(12,'Two States',7);
insert into Books values(13,'Salome',8);
insert into Books values(14,'The Happy Prince',8);

DROP TABLE IF EXISTS `drinks`;

CREATE TABLE `drinks` (
  `drinkname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;


INSERT INTO `drinks` VALUES ('Tea',5.00),('Coffee',15.00),('Pepsi',20.00);



DROP TABLE IF EXISTS `meals`;

CREATE TABLE `meals` (
  `mealname` varchar(50) DEFAULT NULL,
  `rate` float(5,2) DEFAULT NULL
) ;

INSERT INTO `meals` VALUES ('Omlet',10.50),('Sausage',15.50),('Pancake',40.75);

create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	'ASSASSIN\'S CREED: EMBERS',	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

create table members(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);


insert into members values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);


DROP TABLE IF EXISTS `myemp`;

CREATE TABLE `myemp` (
  `EMP_ID` decimal(6,0) NOT NULL DEFAULT 0,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MGR_ID` decimal(6,0) DEFAULT NULL,
  `DEP_ID` decimal(4,0) DEFAULT NULL
) ;


INSERT INTO `myemp` VALUES (100,'Steven','King','SKING','1998-06-17','AD_PRES',24000.00,0.00,0,90),
(101,'Neena','Kochhar','NKOCHHAR','1987-06-18','AD_VP',17000.00,0.00,100,90),
(102,'Lex','De Haan','LDEHAAN','1987-06-19','AD_VP',17000.00,0.00,100,90),
(103,'Alexander','Hunold','AHUNOLD','1976-06-20','IT_PROG',9000.00,0.00,102,60),
(104,'Bruce','Ernst','BERNST','1987-06-21','IT_PROG',6000.00,0.00,103,60),
(105,'David','Austin','DAUSTIN','1987-06-22','IT_PROG',4800.00,0.00,103,60),
(106,'Valli','Pataballa','VPATABAL','1980-06-23','IT_PROG',4800.00,0.00,103,60),
(107,'Diana','Lorentz','DLORENTZ','1987-06-24','IT_PROG',4200.00,0.00,103,60),
(108,'Nancy','Greenberg','NGREENBE','1987-06-25','FI_MGR',12000.00,0.00,101,100),
(109,'Daniel','Faviet','DFAVIET','1992-06-26','FI_ACCOUNT',9000.00,0.00,108,100),
(110,'John','Chen','JCHEN','1987-06-27','FI_ACCOUNT',8200.00,0.00,108,100),
(111,'Ismael','Sciarra','ISCIARRA','1987-06-28','FI_ACCOUNT',7700.00,0.00,108,100),
(112,'Jose Manuel','Urman','JMURMAN','1981-06-29','FI_ACCOUNT',7800.00,0.00,108,100),
(113,'Luis','Popp','LPOPP','1987-06-30','FI_ACCOUNT',6900.00,0.00,108,100),
(114,'Den','Raphaely','DRAPHEAL','1987-07-01','PU_MAN',11000.00,0.00,100,30),
(115,'Alexander','Khoo','AKHOO','1983-07-02','PU_CLERK',3100.00,0.00,114,30),
(116,'Shelli','Baida','SBAIDA','1987-07-03','PU_CLERK',2900.00,0.00,114,30),
(117,'Sigal','Tobias','STOBIAS','1987-07-04','PU_CLERK',2800.00,0.00,114,30),
(118,'Guy','Himuro','GHIMURO','1995-07-05','PU_CLERK',2600.00,0.00,114,30),
(119,'Karen','Colmenares','KCOLMENA','1987-07-06','PU_CLERK',2500.00,0.00,114,30),
(120,'Matthew','Weiss','MWEISS','1987-07-07','ST_MAN',8000.00,0.00,100,50),
(121,'Adam','Fripp','AFRIPP','1990-07-08','ST_MAN',8200.00,0.00,100,50),
(122,'Payam','Kaufling','PKAUFLIN','1987-07-09','ST_MAN',7900.00,0.00,100,50),
(123,'Shanta','Vollman','SVOLLMAN','1987-07-10','ST_MAN',6500.00,0.00,100,50),
(124,'Kevin','Mourgos','KMOURGOS','1997-07-11','ST_MAN',5800.00,0.00,100,50),
(125,'Julia','Nayer','JNAYER','1987-07-12','ST_CLERK',3200.00,0.00,120,50),
(126,'Irene','Mikkilineni','IMIKKILI','1987-07-13','ST_CLERK',2700.00,0.00,120,50),
(127,'James','Landry','JLANDRY','1978-07-14','ST_CLERK',2400.00,0.00,120,50),
(128,'Steven','Markle','SMARKLE','1987-07-15','ST_CLERK',2200.00,0.00,120,50),
(129,'Laura','Bissot','LBISSOT','1987-07-16','ST_CLERK',3300.00,0.00,121,50),
(130,'Mozhe','Atkinson','MATKINSO','1983-07-17','ST_CLERK',2800.00,0.00,121,50),
(131,'James','Marlow','JAMRLOW','1987-07-18','ST_CLERK',2500.00,0.00,121,50),
(132,'TJ','Olson','TJOLSON','1987-07-19','ST_CLERK',2100.00,0.00,121,50),
(133,'Jason','Mallin','JMALLIN','1985-07-20','ST_CLERK',3300.00,0.00,122,50),
(134,'Michael','Rogers','MROGERS','1987-07-21','ST_CLERK',2900.00,0.00,122,50),
(135,'Ki','Gee','KGEE','1987-07-22','ST_CLERK',2400.00,0.00,122,50),
(136,'Hazel','Philtanker','HPHILTAN','1990-07-23','ST_CLERK',2200.00,0.00,122,50),
(137,'Renske','Ladwig','RLADWIG','2000-07-24','ST_CLERK',3600.00,0.00,123,50),
(138,'Stephen','Stiles','SSTILES','1987-07-25','ST_CLERK',3200.00,0.00,123,50),
(139,'John','Seo','JSEO','1989-07-26','ST_CLERK',2700.00,0.00,123,50),
(140,'Joshua','Patel','JPATEL','2011-07-27','ST_CLERK',2500.00,0.00,123,50),
(141,'Trenna','Rajs','TRAJS','1987-07-28','ST_CLERK',3500.00,0.00,124,50),
(142,'Curtis','Davies','CDAVIES','1986-07-29','ST_CLERK',3100.00,0.00,124,50),
(143,'Randall','Matos','RMATOS','1987-07-30','ST_CLERK',2600.00,0.00,124,50),
(144,'Peter','Vargas','PVARGAS','1998-07-31','ST_CLERK',2500.00,0.00,124,50),
(145,'John','Russell','JRUSSEL','1991-08-01','SA_MAN',14000.00,0.40,100,80),
(146,'Karen','Partners','KPARTNER','2019-08-02','SA_MAN',13500.00,0.30,100,80),
(147,'Alberto','Errazuriz','AERRAZUR','1987-08-03','SA_MAN',12000.00,0.30,100,80),
(148,'Gerald','Cambrault','GCAMBRAU','2015-08-04','SA_MAN',11000.00,0.30,100,80),
(149,'Eleni','Zlotkey','EZLOTKEY','1987-08-05','SA_MAN',10500.00,0.20,100,80),
(150,'Peter','Tucker','PTUCKER','1987-08-06','SA_REP',10000.00,0.30,145,80),
(151,'David','Bernstein','DBERNSTE','2013-08-07','SA_REP',9500.00,0.25,145,80),
(152,'Peter','Hall','PHALL','1987-08-08','SA_REP',9000.00,0.25,145,80),
(153,'Christopher','Olsen','COLSEN','1987-08-09','SA_REP',8000.00,0.20,145,80),
(154,'Nanette','Cambrault','NCAMBRAU','1987-08-10','SA_REP',7500.00,0.20,145,80),
(155,'Oliver','Tuvault','OTUVAULT','1987-08-11','SA_REP',7000.00,0.15,145,80),
(156,'Janette','King','JKING','1987-08-12','SA_REP',10000.00,0.35,146,80),
(157,'Patrick','Sully','PSULLY','2002-08-13','SA_REP',9500.00,0.35,146,80),
(158,'Allan','McEwen','AMCEWEN','1987-08-14','SA_REP',9000.00,0.35,146,80),
(159,'Lindsey','Smith','LSMITH','1987-08-15','SA_REP',8000.00,0.30,146,80),
(160,'Louise','Doran','LDORAN','2003-08-16','SA_REP',7500.00,0.30,146,80),
(161,'Sarath','Sewall','SSEWALL','1987-08-17','SA_REP',7000.00,0.25,146,80),
(162,'Clara','Vishney','CVISHNEY','1987-08-18','SA_REP',10500.00,0.25,147,80),
(163,'Danielle','Greene','DGREENE','1987-08-19','SA_REP',9500.00,0.15,147,80),
(164,'Mattea','Marvins','MMARVINS','2007-08-20','SA_REP',7200.00,0.10,147,80),
(165,'David','Lee','DLEE','1987-08-21','SA_REP',6800.00,0.10,147,80),
(166,'Sundar','Ande','SANDE','1987-08-22','SA_REP',6400.00,0.10,147,80),
(167,'Amit','Banda','ABANDA','1987-08-23','SA_REP',6200.00,0.10,147,80),
(168,'Lisa','Ozer','LOZER','1987-08-24','SA_REP',11500.00,0.25,148,80),
(169,'Harrison','Bloom','HBLOOM','1999-08-25','SA_REP',10000.00,0.20,148,80),
(170,'Tayler','Fox','TFOX','1987-08-26','SA_REP',9600.00,0.20,148,80),
(171,'William','Smith','WSMITH','1987-08-27','SA_REP',7400.00,0.15,148,80),
(172,'Elizabeth','Bates','EBATES','1987-08-28','SA_REP',7300.00,0.15,148,80),
(173,'Sundita','Kumar','SKUMAR','1987-08-29','SA_REP',6100.00,0.10,148,80),
(174,'Ellen','Abel','EABEL','1987-08-30','SA_REP',11000.00,0.30,149,80),
(175,'Alyssa','Hutton','AHUTTON','1996-08-31','SA_REP',8800.00,0.25,149,80),
(176,'Jonathon','Taylor','JTAYLOR','1987-09-01','SA_REP',8600.00,0.20,149,80),
(177,'Jack','Livingston','JLIVINGS','1987-09-02','SA_REP',8400.00,0.20,149,80),
(179,'Charles','Johnson','CJOHNSON','1999-09-04','SA_REP',6200.00,0.10,149,80),
(180,'Winston','Taylor','WTAYLOR','1987-09-05','SH_CLERK',3200.00,0.00,120,50),
(181,'Jean','Fleaur','JFLEAUR','1987-09-06','SH_CLERK',3100.00,0.00,120,50),
(182,'Martha','Sullivan','MSULLIVA','1987-09-07','SH_CLERK',2500.00,0.00,120,50),
(183,'Girard','Geoni','GGEONI','1987-09-08','SH_CLERK',2800.00,0.00,120,50),
(184,'Nandita','Sarchand','NSARCHAN','2012-09-09','SH_CLERK',4200.00,0.00,121,50),
(185,'Alexis','Bull','ABULL','1987-09-10','SH_CLERK',4100.00,0.00,121,50),
(186,'Julia','Dellinger','JDELLING','1987-09-11','SH_CLERK',3400.00,0.00,121,50),
(187,'Anthony','Cabrio','ACABRIO','2007-09-12','SH_CLERK',3000.00,0.00,121,50),
(188,'Kelly','Chung','KCHUNG','1987-09-13','SH_CLERK',3800.00,0.00,122,50),
(189,'Jennifer','Dilly','JDILLY','1987-09-14','SH_CLERK',3600.00,0.00,122,50),
(190,'Timothy','Gates','TGATES','1987-09-15','SH_CLERK',2900.00,0.00,122,50),
(191,'Randall','Perkins','RPERKINS','1987-09-16','SH_CLERK',2500.00,0.00,122,50),
(192,'Sarah','Bell','SBELL','1987-09-17','SH_CLERK',4000.00,0.00,123,50),
(193,'Britney','Everett','BEVERETT','1987-09-18','SH_CLERK',3900.00,0.00,123,50),
(194,'Samuel','McCain','SMCCAIN','2000-09-19','SH_CLERK',3200.00,0.00,123,50),
(195,'Vance','Jones','VJONES','1996-09-20','SH_CLERK',2800.00,0.00,123,50),
(196,'Alana','Walsh','AWALSH','1987-09-21','SH_CLERK',3100.00,0.00,124,50),
(197,'Kevin','Feeney','KFEENEY','1987-09-22','SH_CLERK',3000.00,0.00,124,50),
(198,'Donald','OConnell','DOCONNEL','1997-09-23','SH_CLERK',2600.00,0.00,124,50),
(199,'Douglas','Grant','DGRANT','1987-09-24','SH_CLERK',2600.00,0.00,124,50),
(200,'Jennifer','Whalen','JWHALEN','1988-09-25','AD_ASST',4400.00,0.00,101,10),
(201,'Michael','Hartstein','MHARTSTE','1987-09-26','MK_MAN',13000.00,0.00,100,20),
(202,'Pat','Fay','PFAY','1987-09-27','MK_REP',6000.00,0.00,201,20),
(203,'Susan','Mavris','SMAVRIS','1989-09-28','HR_REP',6500.00,0.00,101,40),
(204,'Hermann','Baer','HBAER','1987-09-29','PR_REP',10000.00,0.00,101,70),
(205,'Shelley','Higgins','SHIGGINS','1987-09-30','AC_MGR',12000.00,0.00,101,110),
(206,'William','Gietz','WGIETZ','1997-10-01','AC_ACCOUNT',8300.00,0.00,205,110);


CREATE TABLE PeopleData (
    person_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    address VARCHAR(200),
    reg_date DATE,
    is_subscribed BOOLEAN,
    purchase_amount DECIMAL(10, 2),
    gender CHAR(1),
    discount DECIMAL(5, 2),
    rating INT
);


INSERT INTO PeopleData (person_id, name, age, address, reg_date, is_subscribed, purchase_amount, gender, discount, rating) VALUES
(1, 'Aditi Rao', 32, 'Mumbai, Maharashtra', '2023-03-01', TRUE, 50000, 'F', 18, 4),
(2, 'Raj Malhotra', 45, 'New Delhi, Delhi', '2023-03-02', FALSE, 15000, 'M', 4, 5),
(3, 'Sunita Kashyap', 28, 'Bengaluru, Karnataka', '2023-03-03', TRUE, 30000, 'F', 19, NULL),
(4, 'Aarav Kumar', 35, 'Pune, Maharashtra', '2023-03-04', FALSE, 25000, 'M', 3, 3),
(5, 'Bhavna Reddy', 29, 'Hyderabad, Telangana', '2023-03-05', TRUE, 62000, 'F', 20, 4),
(6, 'Karan Singh', 37, 'Chandigarh, Chandigarh', '2023-03-06', FALSE, 83000, 'M', 5, 2),
(7, 'Neha Sharma', 31, 'Kolkata, West Bengal', '2023-03-07', TRUE, 75000, 'F', 17, 5),
(8, 'Vivek Patel', 42, 'Ahmedabad, Gujarat', '2023-03-08', FALSE, 20000, 'M', 3, 1),
(9, 'Priya Kumar', 26, 'Chennai, Tamil Nadu', '2023-03-09', TRUE, 54000, 'F', 15, 4),
(10, 'Anil Joshi', 39, 'Lucknow, Uttar Pradesh', '2023-03-10', FALSE, 94000, 'M', 4, 3),
(11, 'Lakshmi Narayan', 34, 'Jaipur, Rajasthan', '2023-03-11', TRUE, 55000, 'F', 18, 5),
(12, 'Pranav Mishra', 29, 'Lucknow, Uttar Pradesh', '2023-03-12', FALSE, 29000, 'M', 4, 3),
(13, 'Nidhi Agrawal', 26, 'Kochi, Kerala', '2023-03-13', TRUE, 47000, 'F', 16, 4),
(14, 'Sachin Kumar', 42, 'Nagpur, Maharashtra', '2023-03-14', FALSE, 31000, 'M', 3, 2),
(15, 'Riya Kulkarni', 31, 'Vadodara, Gujarat', '2023-03-15', TRUE, 63000, 'F', 20, 5),
(16, 'Amit Singh', 37, 'Coimbatore, Tamil Nadu', '2023-03-16', FALSE, 34000, 'M', 5, 3),
(17, 'Priyanka Reddy', 28, 'Varanasi, Uttar Pradesh', '2023-03-17', TRUE, 56000, 'F', 17, 4),
(18, 'Rohit Sharma', 33, 'Srinagar, Jammu and Kashmir', '2023-03-18', FALSE, 22000, 'M', 4, 2),
(19, 'Anita Desai', 30, 'Ranchi, Jharkhand', '2023-03-19', TRUE, 59000, 'F', 19, 5),
(20, 'Kunal Roy', 35, 'Gwalior, Madhya Pradesh', '2023-03-20', FALSE, 28000, 'M', 3, 1),
(21, 'Sohail Khan', 38, 'Indore, Madhya Pradesh', '2023-03-21', FALSE, 26000, 'M', 3, 2),
(22, 'Ayesha Siddiqui', 27, 'Kanpur, Uttar Pradesh', '2023-03-22', TRUE, 51000, 'F', 15, 4),
(23, 'Rohan Patil', 33, 'Thane, Maharashtra', '2023-03-23', FALSE, 33000, 'M', 5, 3),
(24, 'Anjali Rao', 29, 'Visakhapatnam, Andhra Pradesh', '2023-03-24', TRUE, 57000, 'F', 17, 5),
(25, 'Kunal Shah', 41, 'Bhopal, Madhya Pradesh', '2023-03-25', FALSE, 22000, 'M', 4, 2),
(26, 'Deepika Das', 35, 'Pimpri-Chinchwad, Maharashtra', '2023-03-26', TRUE, 61000, 'F', 18, 4),
(27, 'Vikas Kumar', 30, 'Patna, Bihar', '2023-03-27', FALSE, 25000, 'M', 5, 3),
(28, 'Ritu Sharma', 32, 'Ludhiana, Punjab', '2023-03-28', TRUE, 65000, 'F', 19, 5),
(29, 'Mohit Verma', 36, 'Agra, Uttar Pradesh', '2023-03-29', FALSE, 19000, 'M', 3, 1),
(30, 'Ishaani Dutta', 28, 'Nashik, Maharashtra', '2023-03-30', TRUE, 43000, 'F', 20, 4),
(31, 'Devika Krishnan', 27, 'Thiruvananthapuram, Kerala', '2023-03-31', TRUE, 49000, 'F', 16, 4),
(32, 'Arjun Reddy', 39, 'Mysuru, Karnataka', '2023-04-01', FALSE, 31000, 'M', 4, 2),
(33, 'Sneha Mohan', 24, 'Amritsar, Punjab', '2023-04-02', TRUE, 53000, 'F', 18, 5),
(34, 'Rahul Gupta', 41, 'Bhubaneswar, Odisha', '2023-04-03', FALSE, 26000, 'M', 3, 1),
(35, 'Tanya Singh', 29, 'Raipur, Chhattisgarh', '2023-04-04', TRUE, 61000, 'F', 20, 5),
(36, 'Vishal Pandey', 36, 'Guwahati, Assam', '2023-04-05', FALSE, 28000, 'M', 5, 3),
(37, 'Kriti Joshi', 32, 'Shimla, Himachal Pradesh', '2023-04-06', TRUE, 58000, 'F', 17, 4),
(38, 'Aman Kumar', 35, 'Dehradun, Uttarakhand', '2023-04-07', FALSE, 33000, 'M', 4, 2),
(39, 'Riya Mehra', 28, 'Gandhinagar, Gujarat', '2023-04-08', TRUE, 57000, 'F', 15, 5),
(40, 'Soham Shah', 31, 'Shillong, Meghalaya', '2023-04-09', FALSE, 22000, 'M', 3, 1),
(41, 'Neha Patel', 26, 'Gangtok, Sikkim', '2023-04-10', TRUE, 64000, 'F', 19, 4),
(42, 'Karan Singhania', 38, 'Panaji, Goa', '2023-04-11', FALSE, 36000, 'M', 4, 3),
(43, 'Anushka Varma', 33, 'Dispur, Assam', '2023-04-12', TRUE, 55000, 'F', 16, 5),
(44, 'Jayesh Pradhan', 29, 'Kohima, Nagaland', '2023-04-13', FALSE, 29000, 'M', 5, 2),
(45, 'Isha Chatterjee', 31, 'Itanagar, Arunachal Pradesh', '2023-04-14', TRUE, 67000, 'F', 18, 4),
(46, 'Mohit Verma', 34, 'Aizawl, Mizoram', '2023-04-15', FALSE, 34000, 'M', 3, 3),
(47, 'Aditya Rajput', 27, 'Agartala, Tripura', '2023-04-16', TRUE, 52000, 'M', 20, 5),
(48, 'Suman Rao', 25, 'Imphal, Manipur', '2023-04-17', FALSE, 25000, 'F', 4, 1),
(49, 'Rakesh Sharma', 40, 'Jaipur, Rajasthan', '2023-04-18', TRUE, 63000, 'M', 15, 4),
(50, 'Priyanka Bose', 22, 'Chandigarh, Chandigarh', '2023-04-19', FALSE, 27000, 'F', 5, 2),
(51, 'Vikrant Mehta', 37, 'Faridabad, Haryana', '2023-04-20', TRUE, 55000, 'M', 18, 4),
(52, 'Monica Sen', 29, 'Rajkot, Gujarat', '2023-04-21', FALSE, 24000, 'F', 4, 3),
(53, 'Navin Rastogi', 43, 'Jodhpur, Rajasthan', '2023-04-22', TRUE, 59000, 'M', 19, 5),
(54, 'Lalita Yadav', 26, 'Madurai, Tamil Nadu', '2023-04-23', FALSE, 32000, 'F', 3, 2),
(55, 'Suresh Pillai', 31, 'Meerut, Uttar Pradesh', '2023-04-24', TRUE, 48000, 'M', 17, 4),
(56, 'Heena Malik', 34, 'Jamshedpur, Jharkhand', '2023-04-25', FALSE, 41000, 'F', 5, 3),
(57, 'Keshav Chandra', 28, 'Udaipur, Rajasthan', '2023-04-26', TRUE, 52000, 'M', 16, 5),
(58, 'Renuka Prasad', 39, 'Salem, Tamil Nadu', '2023-04-27', FALSE, 28000, 'F', 4, 1),
(59, 'Dinesh Kartik', 36, 'Gorakhpur, Uttar Pradesh', '2023-04-28', TRUE, 47000, 'M', 20, 4),
(60, 'Anita Menon', 25, 'Amravati, Maharashtra', '2023-04-29', FALSE, 30000, 'F', 3, 2),
(61, 'Bhavesh Kumar', 30, 'Cuttack, Odisha', '2023-04-30', TRUE, 63000, 'M', 15, 5),
(62, 'Kiran Desai', 32, 'Kota, Rajasthan', '2023-05-01', FALSE, 35000, 'F', 5, 3),
(63, 'Rahul Varma', 29, 'Bhilai, Chhattisgarh', '2023-05-02', TRUE, 54000, 'M', 18, 4),
(64, 'Sunita Mahajan', 27, 'Aligarh, Uttar Pradesh', '2023-05-03', FALSE, 26000, 'F', 4, 2),
(65, 'Manish Tiwari', 38, 'Bareilly, Uttar Pradesh', '2023-05-04', TRUE, 49000, 'M', 17, 5),
(66, 'Jyoti Singh', 35, 'Moradabad, Uttar Pradesh', '2023-05-05', FALSE, 44000, 'F', 3, 1),
(67, 'Sandeep Rawat', 31, 'Gurgaon, Haryana', '2023-05-06', TRUE, 58000, 'M', 19, 4),
(68, 'Nimisha Pathak', 33, 'Firozabad, Uttar Pradesh', '2023-05-07', FALSE, 31000, 'F', 5, 3),
(69, 'Prateek Sharma', 29, 'Muzaffarnagar, Uttar Pradesh', '2023-05-08', TRUE, 51000, 'M', 16, 5),
(70, 'Rashmi Verma', 24, 'Mathura, Uttar Pradesh', '2023-05-09', FALSE, 27000, 'F', 4, 2),
(71, 'Aakash Gupta', 40, 'Kollam, Kerala', '2023-05-10', TRUE, 64000, 'M', 15, 4),
(72, 'Tanvi Ahuja', 28, 'Avadi, Tamil Nadu', '2023-05-11', FALSE, 29000, 'F', 4, 3),
(73, 'Nikhil Rao', 37, 'Tirunelveli, Tamil Nadu', '2023-05-12', TRUE, 55000, 'M', 17, 4),
(74, 'Ishaan Dev', 34, 'Malegaon, Maharashtra', '2023-05-13', FALSE, 32000, 'M', 5, 2),
(75, 'Pooja Mahajan', 31, 'Gaya, Bihar', '2023-05-14', TRUE, 60000, 'F', 18, 5),
(76, 'Rohan Sethi', 29, 'Jalgaon, Maharashtra', '2023-05-15', FALSE, 27000, 'M', 3, 1),
(77, 'Manvi Khurana', 33, 'Ujjain, Madhya Pradesh', '2023-05-16', TRUE, 62000, 'F', 20, 5),
(78, 'Kabir Singh', 36, 'Siliguri, West Bengal', '2023-05-17', FALSE, 28000, 'M', 4, 3),
(79, 'Aditi Sharma', 27, 'Sonipat, Haryana', '2023-05-18', TRUE, 53000, 'F', 15, 4),
(80, 'Vishnu Patel', 42, 'Nanded, Maharashtra', '2023-05-19', FALSE, 35000, 'M', 5, 2),
(81, 'Shreya Ghoshal', 25, 'Kochi, Kerala', '2023-05-20', TRUE, 48000, 'F', 19, 5),
(82, 'Pranav Kulkarni', 30, 'Ajmer, Rajasthan', '2023-05-21', FALSE, 31000, 'M', 3, 1),
(83, 'Naina Gupta', 38, 'Kolhapur, Maharashtra', '2023-05-22', TRUE, 59000, 'F', 18, 4),
(84, 'Sohail Mirza', 41, 'Kurnool, Andhra Pradesh', '2023-05-23', FALSE, 34000, 'M', 4, 3),
(85, 'Anika Chopra', 29, 'Bellary, Karnataka', '2023-05-24', TRUE, 57000, 'F', 16, 5),
(86, 'Rajesh Khanna', 32, 'Patiala, Punjab', '2023-05-25', FALSE, 26000, 'M', 5, 2),
(87, 'Meera Sanyal', 35, 'Sagar, Madhya Pradesh', '2023-05-26', TRUE, 61000, 'F', 17, 4),
(88, 'Amit Varma', 28, 'Bharatpur, Rajasthan', '2023-05-27', FALSE, 29000, 'M', 3, 1),
(89, 'Ritika Singh', 26, 'Bhatpara, West Bengal', '2023-05-28', TRUE, 54000, 'F', 20, 5),
(90, 'Siddharth Nair', 39, 'Panihati, West Bengal', '2023-05-29', FALSE, 33000, 'M', 4, 2),
(91, 'Kiran Bedi', 31, 'Latur, Maharashtra', '2023-05-30', TRUE, 58000, 'F', 15, 3),
(92, 'Mohammad Azhar', 27, 'Dhule, Maharashtra', '2023-05-31', FALSE, 22000, 'M', 5, 4),
(93, 'Lakshmi Rai', 34, 'Rohtak, Haryana', '2023-06-01', TRUE, 64000, 'F', 18, 5),
(94, 'Kunal Nayyar', 29, 'Nagercoil, Tamil Nadu', '2023-06-02', FALSE, 36000, 'M', 5, 2),
(95, 'Deepika Chauhan', 33, 'Bhiwandi, Maharashtra', '2023-06-03', TRUE, 67000, 'F', 17, 4),
(96, 'Aarav Singh', 37, 'Saharanpur, Uttar Pradesh', '2023-06-04', FALSE, 39000, 'M', 4, 3),
(97, 'Priya Rajput', 26, 'Guntur, Andhra Pradesh', '2023-06-05', TRUE, 58000, 'F', 16, 5),
(98, 'Rohan Bhatia', 31, 'Bikaner, Rajasthan', '2023-06-06', FALSE, 31000, 'M', 3, 1),
(99, 'Sofia Khan', 28, 'Amritsar, Punjab', '2023-06-07', TRUE, 63000, 'F', 20, 4),
(100, 'Nitin Desai', 42, 'Ajmer, Rajasthan', '2023-06-08', FALSE, 27000, 'M', 5, 2);

CREATE TABLE SalesData (
    transaction_id INT PRIMARY KEY,
    salesperson_id INT,
    sale_amount DECIMAL(10, 2),
    sale_date DATE
);


INSERT INTO SalesData (transaction_id, salesperson_id, sale_amount, sale_date) VALUES
(1, 101, 100.00, '2023-01-01'),
(2, 102, 150.00, '2023-01-02'),
(3, 103, 120.00, '2023-01-03'),
(4, 101, 200.00, '2023-01-04'),
(5, 102, 180.00, '2023-01-05'),
(6, 103, 250.00, '2023-01-06'),
(7, 101, 300.00, '2023-01-07'),
(8, 102, 220.00, '2023-01-08'),
(9, 103, 190.00, '2023-01-09');


CREATE TABLE StockPrices (
    record_date DATE,
    closing_price DECIMAL(10, 2),
    stock_symbol VARCHAR(10)
);


INSERT INTO StockPrices (record_date, closing_price, stock_symbol) VALUES
('2023-01-01', 100.00, 'ABC'),
('2023-01-02', 102.00, 'ABC'),
('2023-01-03', 101.00, 'ABC'),
('2023-01-04', 103.50, 'ABC'),
('2023-01-05', 105.00, 'ABC');






