/*creating a database */
create database AttendingConference;

/*using the database*/
use AttendingConference;

/*granting access to user*/
create user 'ashok'@'localhost' identified by 'ah';
grant select, insert on *.* to 'ashok'@'localhost';

/*Creating a table named conference */
create table conference (conferenceID char(5) primary key, EventAttending varchar(50), ReasonAttending varchar(100), FirstTimeAttending enum('Yes','No'));

/*inserting values into the table conference*/
insert into conference values('25022','Event 1 Event 2 Event 3 Event ','Looking to enhance knowledge','Yes');
insert into conference values('25032','Event 1', 'Looking to enhance knowledge','No');
insert into conference values('25042','Event 1 Event 3','Looking for an internship','Yes');
insert into conference values('25018','Event 1 Event 2 Event 3 Event 4','Interested in becoming a mentor','Yes');
insert into conference values('25015','Event 1 Event 4','Looking for a job', 'Yes');
insert into conference values('25001','Event 1','Looking to enhance knowledge','Yes');
insert into conference values('25014','Event 1 Event 2','Looking for an internship','Yes');
insert into conference values('25046', 'Event 1 Event 2 Event 3 Event 4', 'Looking for an internship','Yes');
insert into conference values('15380','Event 1 Event 2 Event 3 Event 4', 'Looking to enhance knowledge','Yes');
insert into conference values('31164', 'Event 1 Event 2 Event 3 Event 4', 'Looking to enhance knowledge','Yes');
insert into conference values('25027','Event 3','Interested in becoming a mentor','No');
insert into conference values('25039','Event 1 Event 2','Looking for an internship','Yes');
insert into conference values('25023','Event 1 Event 2 Event 3 Event 4','Looking for a job','Yes');


/*creating a table NationalId*/
create table NationalId(AadharNo char(14) primary key, Email varchar(40), gender enum('M','F'), City varchar(20));

/*inserting values into table NationalId*/
insert into NationalId values('3214 2354 8475','namanvasudeva@gmail.com','M','New Delhi');
insert into NationalId values('7462 2648 2942','025032@fsm.ac','M','Mandi Gobindgarh');
insert into NationalId values('8735 3782 2748','muskankaur25@gmail.com','F','New Delhi');
insert into NationalId values('1242 8472 2947','025018@fsm.ac','M','Jodhpur');
insert into NationalId values('9485 3752 4532','025015@fsm.ac','M','SAHARANPUR');
insert into NationalId values('1342 5938 3543','025001@fsm.ac','F','Faridabad');
insert into NationalId values('9548 3982 1245','025014@fsm.ac' ,'F','New Delhi');
insert into NationalId values('3859 2856 3852','akhilsharma09@gmail.com','M','New Delhi');
insert into NationalId values('5324 8735 2942','153080@fsm.ac','M','New Delhi');
insert into NationalId values('1948 3284 9284','bhaveshkapoor45@gmail.com','M','New Delhi' );
insert into NationalId values('2948 5832 2947','saad3933@gmail.com','M','Toronto');
insert into NationalId values('9584 2743 8943','choprayatin25@gmail.com','M','New Delhi');
insert into NationalId values('2982 2748 2842','natashashrivastava123@gmail.com','F','New Delhi');


/*creating a table Contact*/
create table Contact(ContactNo char(15) primary key, Name varchar(20));

/*inserting values into table Contact*/
insert into Contact values('9417900480','Naman Vasudeva');
insert into Contact values('7986955745','Shubham Gupta');
insert into Contact values('9999999999','Muskan kaur');
insert into Contact values('9001703798','Lakshyadeep Singh Chouhan');
insert into Contact values('9571043839','Ekansh Vashistha');
insert into Contact values('9582071000','Aashika Jain');
insert into Contact values('9131717023','Divya Dubey');
insert into Contact values('9711377873','Akhil Sharma');
insert into Contact values('7015174259','Garvit Grover');
insert into Contact values('9560687034','Bhavesh Kapoor');
insert into Contact values('9582379697','Saad Khan');
insert into Contact values('9910009880','Yatin Chopra');
insert into Contact values('8826250993','Natasha Shrivastava');



/*creating a table Payments*/
create table Payments (PaymentID varchar(30) primary key, Type enum('Student','WorkingProfessional'), FeePaid enum('100','500'));

/*inserting values into table Payments*/
insert into Payments values ('1234','Student','100');
insert into Payments values ('2345','Student','100');
insert into Payments values ('3456','Student','100');
insert into Payments values ('4567','Student','100');
insert into Payments values ('5678','Student','100');
insert into Payments values ('6789','Student','100');
insert into Payments values ('7890','Student','100');
insert into Payments values ('8901','Student','100');
insert into Payments values ('9012','Student','100');
insert into Payments values ('1098','Student','100');
insert into Payments values ('8764','WorkingProfessional','500');
insert into Payments values ('5321','Student','100');
insert into Payments values ('8524','Student','100');
