CREATE USER 'saad'@'localhost' IDENTIFIED BY 'S';
GRANT ALL PRIVILEGES ON *.* TO 'saad'@'localhost';

CREATE USER 'naman'@'localhost' IDENTIFIED BY 'N1';
GRANT SELECT,INSERT ON *.* TO 'naman'@'localhost';

CREATE USER 'natasha'@'localhost' IDENTIFIED BY 'N2';
GRANT ALL PRIVILEGES ON *.* TO 'natasha'@'localhost';

--granting roles, and authority

drop database if exists ins ;
create database if not exists ins ;


use ins;

create table if not exists cust_ord(order_ID char(12) not null unique,
Date DATETIME not null, product_ID char(5) not null, customer_ID char(10) not null, Premium FLOAT(15,5) not null, Renewal ENUM("Y","N") not null, Agent SET("Y","N") not null, Employee_ID char(7) not null, Branch_ID char(4) not null) ;

--have included renewal flag (yes or no) in order to determine whether a customer has ordered a renewal of existing product/policy or is subscribing or buying a new one
--Agent flag (Y-yes, N-No) is to see whether a branch identified agent or salesperson was used to sell the insurance policy to customer

insert into cust_ord values("ABC999912340", '2021-11-20 20:33:39', "A0001", "A0B$qwerty", 200000.5559,  'Y','N' , 2021203, 0101);

insert into cust_ord values("ABC998812340", '2021-01-20 20:33:39', "A0001", "A0C$qwerty", 20000.57,  'N','Y' , 2001103, 0201);

insert into cust_ord values("LMN778812340", '2022-01-20 20:33:39', "B0011", "DTC$xcerty", 3000000.00,  'Y','N' , 2000703, 0101);

insert into cust_ord values("POL098812340", '2022-11-02 10:33:39', "B0011", "XLR$pcerty", 30000.00,  'Y','Y' , 2000703, 0101);


insert into cust_ord values("POP098812340", '2022-11-02 10:33:39', "C0001", "XLRPPcerty", 340000.00,  'Y','Y' , 2022363, 0111);

insert into cust_ord values("PAT098812340", '2022-11-02 10:33:39', "C0021", "XLRPPcerty", 400.00,  'N','Y' , 2022363, 0111);

--mock values inserted in cust_ord, order_ID is unique

-- Avg_expected_premium shows the premium rates a particular policy charges from most customers, it can be used as a measure to find outliers or finding reasons for change in premium amounts in case of all other factors remaining constant

create table if not exists product(product_ID char(5) not null unique, 
prod_name varchar(50) not null, Avg_expected_premimum FLOAT(15,5) not null, Ins_type ENUM("Life", "Health", "Accident" ,"Home", "ULIP", "Real_estate") not null) ; 


insert into product values("A0001", "Life 30+",50000.00, "Life") 

insert into product values("B0001", "Full cover",19000.00, "Health") 

insert into product values("B0011", "Full cover + EXTRA",50000.00, "Health")


insert into product values("C0001", "EX Low + Life",48000.00, "ULIP") 

insert into product values("D0001", "Road Accident",48000.00, "Accident")


insert into product values("D0021", "Public Transport Accident",48000.00, "Accident") 

insert into product values("F0021", "Earthquake",48000.00, "Home") 

--customer records would help the company analyse their customers, their needs, pricing of products, and any other changes related to business processes

create table if not exists customers(customer_ID char(10) not null unique, Name varchar(50) not null, Age SMALLINT(3) not null, Gender ENUM("Male","Female", "Other"), Income_per_year DECIMAL(15,5) not null, Address varchar(100) not null, Health_rating ENUM("1", "2", "3" ,"4", "5", "6") ) ;

insert into customers values("XLRPPcerty", "Saad Khan", 27, "Male", 3000000.00, "New Delhi - 101010 Block A manekshaw", "5")


insert into customers values("XRR$qwerty", "No Name", 24, "Female", 19000000.00, "Ghaziabad", "2") ;

insert into customers values("XLR^wxerty", "P Anonymous", 55, "Female", 109000000.00, "Bangalore Gandhi Road", "3") ;

insert into customers values("XFR$pcerty", "P Chauhan", 36, "Male", 8024000.00, "B/22 Delhi", "6") ;

--Created an employee table which consists of designation, other personal employee information, their date of joining and leaving could be analysed to find the attrition rate in the company, branch wise or region wise

create table if not exists employees(Employee_ID char(7) not null unique, E_Name varchar(50) not null, Designation ENUM("Head_country", "Region_Head", "State_Head" ,"Branch_Manager", "Senior_Executive", "Junior_Executive") not null,Branch_ID char(4) not null, Current ENUM("Y","N"), Date_join DATE not null, Date_left DATE );

insert into employees values(2021203, "Shikar Garg", "Branch_Manager", 0101, "N", "2021-10-21", "2022-03-09") ;

insert into employees values(2021203, "Srivastava", "State_Head", "A001", "N", "2019-10-21", "2022-03-09") ;

insert into employees values(2021203, "Shikar Garg", "Senior_Executive", 0111, "Y", "2021-10-21") ;

--this table helps in mapping regions targetting certain customers with particular products, also finds extra expenditure or help used in the form of external resources "Agents"

create table if not exists Office(Branch_ID char(4) not null unique, product_ID char(5) not null, City varchar(25) not null, State varchar(20) not null, Region ENUM("North", "West", "Central", "South","East") ,Agents_hired int(3) not null) ;



