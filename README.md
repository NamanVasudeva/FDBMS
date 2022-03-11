# FDBMS

*Ques 1*
*Group 14- Insurance products and sales DBMS.docx* - gives a brief about our project and how we proceeded with it.

*Insurance Products and Sales DBMS* - This file contains the codes for this project.

*ER.pdf* - Shows the ER diagram for the project. (Tool used- Workbench)

*Summary* -

Insurance Products and Sales

Insurance companies and their leaders often use data analytics, and business intelligence to gain insight into the functioning of their company. To have a good handle and to make the correct decisions in a short timeframe requires data to be available in a convenient, quick, and easy to interpret manner. Therefore, it is essential for companies to create a database management system for its key elements, and to have one that business users or non-technical users can also use for their own needs, and requirements.
Some of the usual functional and data requirements of employees, managers, senior leaders, and owners of a company may include the orders of the customer or the different type of insurance an individual or company has bought, the different types of insurance products the company sells over their defined market or region, the employees that are hired – ones who perform better, some leave, the reason for their departure from the company, as well as tracking customer premium renewals as it forms the largest part of an insurance company’s revenue. 

We’ve identified 5 entities that will be key to our database, these are orders, customers, product (or insurance policy), employees, and branches. They will contain attributes which can be used and derive other data that may be required for an insurance company. (An attribute is a property that may describe an entity, and many attributes combine to define an entity)
Our first entity that is the orders a customer places can majorly be described by the entities order_ID, date of order, customer_ID, Product Name (or ID), Premium amount, renewal status (if policy is being renewed by an existing customer or being bought freshly), and lastly whether an agent marketed or sold the policy to a customer, or whether the customer bought it through a branch or on company’s website.
Our second entity is Products, which can be defined by the attributes name, branch from where it was sold, average premium amount the company gets from sale of this product, category of insurance it falls under. 
Our third entity is the customer, who has a name, an address, income, gender, rating to see if he is fit for the process. The fourth entity is Employees which also contains the employee’s name, designation, branch where they work, and if they are a current employee or not.
The final entity is the office, which is the primary source of operations for the company, where all processes to run the business take place. The important attributes to consider here would be the region which it is run out of, the state in which it is located, its branch ID, has it hired external salespersons or agents, and the products the company aims to sell through these branches. 





*Ques 2* 
*Group 14 Conference Attending Form Database - Assumptions.csv* - Contains the excel file with the tables created. (Normalisation steps have been shown in this file)

*FDBMS G14.sql* - This file contains the codes for this project.

*ER.pdf* - Shows the ER diagram for the project. (Tool used- Workbench)

*Summary*-

Conference Attending Form

For this project, we created a form which would require some particular information to be filled by the respondents. 
For this conference, only current students or working professionals can register and attend the events.
The conference will host four events, Event-1, Event-2, Event-3 and Event-4
The fees for attending the conference will be Rs. 100 for students and Rs. 500 for working professionals.
Once registration is done for the conference, a unique payment ID and conference ID is generated.
Mandatory information for registration includes the contact number and AADHAR card number of the attendee (for primary key).

We identified 4 entities that will be the key to our database, Contact, Conference, National ID and Payments.
Our first entity, Contact, can be described by the name of the attendee and their contact number.
Our second entity, Conference, can be described by the conference ID, the events that the attendee will attend, the reason for attending the conference and if it’s the first time for the attendee to attend this conference.
Our third entity, National ID, can be described by the Aadhar card number, email ID, gender and city the attendee lives in.
Our fourth entity, Payments, is described by the Payment ID, the type of attendee (student pays Rs 100 and working professional pays Rs 500) and the fees paid accordingly.
