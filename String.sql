CREATE TABLE Employees (
    Employee_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Phone VARCHAR(20)
);

INSERT INTO Employees
(Employee_ID, First_Name, Last_Name, Email, Department, City, Phone)
VALUES
(101, 'Dravid', 'Kumar', 'dravid.kumar@gmail.com', 'Data Analytics', 'Coimbatore', '9876543210'),
(102, 'Arun', 'Raj', 'arun.raj@yahoo.com', 'Finance', 'Chennai', '9876501234'),
(103, 'Priya', 'Sharma', 'priya.sharma@gmail.com', 'HR', 'Bangalore', '9876512345'),
(104, 'Karthik', 'Ravi', 'karthik.ravi@outlook.com', 'IT', 'Coimbatore', '9876523456'),
(105, 'Meena', 'Kumar', 'meena.kumar@gmail.com', 'Marketing', 'Chennai', '9876534567'),
(106, 'Suresh', 'Bala', 'suresh.bala@yahoo.com', 'Sales', 'Madurai', '9876545678'),
(107, '   Divya', 'Rani', 'divya.rani@gmail.com', 'Data Analytics', 'Bangalore', '9876556789'),
(108, 'Vijay', 'Kumar', 'vijay.kumar@outlook.com', 'IT', 'Chennai', '9876567890'),
(109, 'Anitha', 'Devi', 'anitha.devi@gmail.com', 'HR', 'Coimbatore', '9876578901'),
(110, 'Rahul', 'Krishnan', 'rahul.krishnan@yahoo.com', 'Finance', 'Madurai', '9876589012');

truncate table employees;

select * from Employees;

select First_Name,upper(First_Name) as upper_value,
				  length(first_name) as valluee,
				  trim(first_name) as counts,
				  length(trim(first_name)) from Employees;

select last_Name,Lower(Last_Name) as Lower_Name from Employees;

select First_Name,length(First_Name) as Length_of_First_Name from Employees;

select First_Name,left(First_Name,3) as left_value from  Employees;

select Last_Name,right(Last_Name,3) as Right_value from  Employees;

select First_Name,Last_Name,Concat(First_Name,Last_Name) as Full_Name from 
Employees;

select First_Name,Last_Name,Concat(First_Name,Last_Name) as Full_Name,upper(Concat(First_Name,Last_Name)) as Upper_Full_Name from 
Employees;

select Email,left(Email,5) as New_Value from Employees;

select First_Name,substring(First_Name,2,4) as New_Value from Employees;

SELECT Department,
       REPLACE(Department, 'IT', 'Information Technology') AS change_value
FROM Employees
WHERE Department = 'IT';

select First_Name,Last_Name,left(First_Name,2) as Left_value,Right(Last_Name,2) as Right_value
from Employees;

SELECT First_Name,
       Employee_ID,
       CONCAT(LEFT(First_Name, 3), Employee_ID) AS Employee_Code
FROM Employees;

select First_Name,Employee_ID,Left(First_Name,3) as Left_Value ,concat(Left(First_Name,3),Employee_ID) as Employee_code
from Employees;

SELECT Email,
       REPLACE(Email, 'gmail.com', 'company.com') AS New_Email
FROM Employees
WHERE Email LIKE '%gmail.com';

select Email,MID(Email,5,5) as MID_Character from Employees;

SELECT First_Name,
       Department,
       City,
       UPPER(First_Name) AS Upper_First_Name,
       UPPER(Department) AS Upper_Department,
       UPPER(City) AS Upper_City,
       CONCAT(
           UPPER(First_Name), ' ',
           UPPER(Department), ' ',
           UPPER(City)
       ) AS Combine
FROM Employees;


select First_Name,Last_Name,left(First_Name,2)as Left_value,
                            Right(Last_Name,3) as Right_Value,
                            concat(left(First_Name,2),Right(Last_Name,3),Employee_ID) as Employee_code
                            from Employees;

select First_Name,Last_Name,concat(First_Name,Last_Name) as Full_Name,
                            upper(concat(First_Name,Last_Name)) as Upper_Full_Name
                            from Employees;

select First_Name,Last_Name,left(First_Name,3) as left_value,
                            right(Last_Name,3) as Right_Value,
                            concat(left(First_Name,3),right(Last_Name,3)) as Short_Name
                            from Employees;

SELECT 
    First_Name,
    Last_Name,
    Email,
    LEFT(First_Name, 3) AS left_Value,
    RIGHT(Last_Name, 3) AS right_Value,
    CONCAT(
        LOWER(LEFT(First_Name, 3)),
        LOWER(Last_Name),
        '@company.com'
    ) AS New_Email
FROM Employees;

CREATE TABLE Customers (
    Customer_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Phone VARCHAR(15)
);

INSERT INTO Customers
(Customer_ID, First_Name, Last_Name, Email, Department, City, Phone)
VALUES
(201, 'Ramesh', 'Kumar', 'ramesh.kumar@gmail.com', 'Sales', 'Chennai', '9876512345'),
(202, 'Anjali', 'Sharma', 'anjali.sharma@yahoo.com', 'Marketing', 'Coimbatore', '9876523456'),
(203, 'Vikram', 'Raj', 'vikram.raj@gmail.com', 'Finance', 'Madurai', '9876534567'),
(204, 'Sneha', 'Devi', 'sneha.devi@outlook.com', 'Human Resources', 'Bangalore', '9876545678'),
(205, 'Arun', 'Prakash', 'arun.prakash@gmail.com', 'IT', 'Chennai', '9876556789'),
(206, 'Divya', 'Kannan', 'divya.kannan@yahoo.com', 'Operations', 'Salem', '9876567890'),
(207, 'Manoj', 'Ravi', 'manoj.ravi@gmail.com', 'Finance', 'Coimbatore', '9876578901'),
(208, 'Priya', 'Mohan', 'priya.mohan@outlook.com', 'Sales', 'Trichy', '9876589012'),
(209, 'Karthik', 'Bala', 'karthik.bala@gmail.com', 'Marketing', 'Madurai', '9876590123'),
(210, 'Meena', 'Devi', 'meena.devi@yahoo.com', 'IT', 'Salem', '9876501234');

drop table Customers;

select *from  Customers;

SELECT 
    First_Name,
    Last_Name,
    LEFT(First_Name, 3) AS Left_Value,
    RIGHT(Last_Name, 3) AS Right_Value,
    CONCAT(LEFT(First_Name, 3), RIGHT(Last_Name, 3)) AS Combined_Value,
    LOWER(CONCAT(LEFT(First_Name, 3), RIGHT(Last_Name, 3))) AS Lower_Case
FROM Customers;

select First_Name,Last_Name,Customer_ID,left(First_Name,2) as Left_Value,
                                        right(Last_Name,2) as Right_Value,
                                        right(Customer_ID,2) as Right_value,
                                        concat(left(First_Name,2),right(Last_Name,2),right(Customer_ID,2)) as Customer_ID
                                        from Customers;
SELECT 
    First_Name,
    Last_Name,
    Email,
    LEFT(First_Name, 3) AS left_value,
    LEFT(Last_Name, 3) AS last_value,
    CONCAT(
        LEFT(First_Name, 3),
        LEFT(Last_Name, 3),
        '@company.com'
    ) AS New_Email,
    LOWER(
        CONCAT(
            LEFT(First_Name, 3),
            LEFT(Last_Name, 3),
            '@company.com'
        )
    ) AS Lower_value
FROM Customers;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Department VARCHAR(50),
    City VARCHAR(50),
    Phone VARCHAR(15)
);

drop table Employees;


INSERT INTO Employees
(EmployeeID, First_Name, Last_Name, Email, Department, City, Phone)
VALUES
(101, 'Arun', 'Kumar', 'arun.kumar@company.com', 'Finance', 'Chennai', '9876543210'),
(102, 'Priya', 'Sharma', 'priya.sharma@company.com', 'HR', 'Coimbatore', '9123456780'),
(103, 'Karthik', 'Rajan', 'karthik.rajan@company.com', 'IT', 'Bangalore', '9988776655'),
(104, 'Divya', 'Menon', 'divya.menon@company.com', 'Sales', 'Chennai', '9345678123'),
(105, 'Rahul', 'Verma', 'rahul.verma@company.com', 'Marketing', 'Mumbai', '9876123456'),
(106, 'Anjali', 'Krishnan', 'anjali.krishnan@company.com', 'Finance', 'Madurai', '9567891234'),
(107, 'Vikram', 'Singh', 'vikram.singh@company.com', 'IT', 'Delhi', '9012345678'),
(108, 'Meena', 'Iyer', 'meena.iyer@company.com', 'HR', 'Coimbatore', '9789012345'),
(109, 'Sanjay', 'Patel', 'sanjay.patel@company.com', 'Sales', 'Ahmedabad', '9898981234'),
(110, 'Harini', 'Reddy', 'harini.reddy@company.com', 'Marketing', 'Hyderabad', '9556677889'),
(111, 'Ajay', 'Nair', 'ajay.nair@company.com', 'Operations', 'Kochi', '9445566778'),
(112, 'Keerthana', 'Rao', 'keerthana.rao@company.com', 'Finance', 'Bangalore', '9667788990'),
(113, 'Ramesh', 'Balan', 'ramesh.balan@company.com', 'Operations', 'Chennai', '9334455667'),
(114, 'Swetha', 'Das', 'swetha.das@company.com', 'IT', 'Kolkata', '9887766554'),
(115, 'Naveen', 'Joshi', 'naveen.joshi@company.com', 'Sales', 'Pune', '9223344556');


select * from Employees;

select EmployeeID, First_Name, Last_Name,left(First_Name,2) as Fisrt_Two_Letter,
                                         Right(Last_Name,3) as Last_Two_Letter,
                                         Right(EmployeeID,2) as Last_Two_Letter,
                                         concat(left(First_Name,2),Right(Last_Name,3),Right(EmployeeID,2)) as Employee_Code from Employees;

SELECT First_Name, Last_Name,
       LEFT(First_Name, 1) AS First_Character,
       Last_Name AS Last_Full_Name,
       CONCAT(LEFT(First_Name, 1), Last_Name) AS User_Name,
       LOWER(CONCAT(LEFT(First_Name, 1), Last_Name)) AS Lower_Value
FROM Employees;


SELECT First_Name, Last_Name,
       CONCAT(First_Name, Last_Name) AS Full_Name,
       LENGTH(CONCAT(First_Name, Last_Name)) AS Name_Length
FROM Employees
WHERE LENGTH(CONCAT(First_Name, Last_Name)) > 12;

select First_Name, Last_Name, left(First_Name,3) as Left_Value,
                              Right(Last_Name,3) as Right_Value,
                              concat(left(First_Name,3),Right(Last_Name,3)) as Short_Name,
                              UPPER(concat(left(First_Name,3),Right(Last_Name,3))) as New_column
                              from Employees;

SELECT Email,
       LOWER(Email) AS Lower_Email,
       REPLACE(LOWER(Email), '.com', '.in') AS New_Email
FROM Employees;

select First_Name, Last_Name,Last_Name as new_cloumn1,
                             First_Name as new_column2,
                             concat(Last_Name,",",First_Name) as Display_Name
                             from Employees;

select phone,mid(phone,3,6) as new_column
             from Employees;

select EmployeeID, First_Name, Last_Name, Email, Department, City, Phone,left(Department,1) as Left_Value,
                                                                         left(city,2) as Lef_Value,
                                                                         right(phone,3) as Right_column,
                                                                         EmployeeID as New_Employee,
                                                                         concat(left(Department,1),left(city,2),right(phone,3),EmployeeID) as Profile_ID
                                                                         from Employees;

select * from Employees;

SELECT EmployeeID, First_Name, Last_Name
FROM Employees
WHERE LOWER(LEFT(First_Name, 1)) = LOWER(LEFT(Last_Name, 1));

select First_Name,Last_Name
FROM Employees
where left(First_Name,1)=right(Last_Name,1) ;


SELECT *
FROM Employees
WHERE Email LIKE '%@%'
  AND Email LIKE '%.com'
  AND Email = LOWER(Email)
  AND LENGTH(Email) - LENGTH(REPLACE(Email, '@', '')) = 1;
     
SELECT First_Name,
       Last_Name,
       LENGTH(First_Name) AS First_column,
       LENGTH(Last_Name) AS Last_column
FROM Employees
WHERE LENGTH(First_Name) > LENGTH(Last_Name);

SELECT First_Name
FROM Employees
WHERE LOWER(First_Name) LIKE '%a%a%';

SELECT First_Name,
       Last_Name,
       LEFT(First_Name, 1) AS New_column1,
       RIGHT(Last_Name, 1) AS New_column2
FROM Employees
WHERE LOWER(LEFT(First_Name, 1)) = LOWER(RIGHT(Last_Name, 1));


CREATE TABLE Employees (
    EmployeeID INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    City VARCHAR(50)
);

drop table Employees;

INSERT INTO Employees (EmployeeID, Name, Department, City)
VALUES
(101, 'Dravid Nirendhar', 'Data Science', 'Coimbatore'),
(102, 'Arun Kumar', 'Finance', 'Chennai'),
(103, 'Priya Sharma', 'HR', 'Bangalore'),
(104, 'Rahul Das', 'Marketing', 'Mumbai'),
(105, 'Meena Raj', 'IT', 'Chennai'),
(106, 'Karthik Kumar', 'Sales', 'Coimbatore'),
(107, 'Vijay Anand', 'Data Science', 'Chennai'),
(108, 'Sneha Rao', 'Finance', 'Bangalore'),
(109, 'Ravi Kumar', 'IT', 'Mumbai'),
(110, 'Anitha Devi', 'HR', 'Coimbatore');

truncate table Employees;

select*from Employees;

select EmployeeID,Length(EmployeeID) as count from Employees;

select Name,Department, City,upper(Name) as Upper_Case ,
                             lower(Name)as Lower_Case ,
                             length(Name) as Count_of_Name ,
                             trim(Name) as Extra_space ,
                             left(Name,3) as Name_left,
                             right(Name,3) as Name_right,
                             substring(Name,2,5) as middle_value,
                             concat(Name," - ",city) as label from Employees;

SELECT Name, Department, City,
       REPLACE(Department, 'IT', 'Information Technology') AS change_value
FROM Employees
WHERE Department = 'IT';

select EmployeeID,Name,Department,City,left(Name,3) as left_value,
                                       concat(left(Name,3),EmployeeID) as Employee_code
                                       from Employees;

select Name,length(name) as count_of_column from Employees
where length(Name)>10;

select Name,upper(Name) as Standardized_Names from Employees;

select Department,left(Department,3) as Short_Name from Employees;

select city,left(city,2) as Left_value,
            right(city,2) as Right_value,
            concat(left(city,2),right(city,2)) as city_code 
            from Employees;

select name,Department,concat(Name,"-",Department) as Employee_Display_Name
from Employees;

select Name,Department,Replace(Department,"Data Science","Data Analytics") as change_value 
                       from Employees where Department="Data Science";

select Name,length(Name) as Count_of_Name from Employees
where length(Name)=10;

SELECT EmployeeID,
       Name,
       Department,
       City,
       LEFT(Name, 2) AS left_value,
       RIGHT(City, 2) AS right_value,
       CONCAT(LEFT(Name, 2), RIGHT(City, 2), EmployeeID) AS Employees_identifier
FROM Employees;

select EmployeeId,Department,Name,left(Name,2) as Left_value,
                                  right(Name,2) as Right_value,
                                  concat(left(Name,2),right(Name,2),EmployeeId) as Employee_code
                                  from Employees;

select Name,length(Name) as count_of_Name from Employees
where length(Name)>8 and 
      Name like "a%" or Name like "D%";


select Department,Trim(Department) as Remove_extra_spaces,
                  upper(Trim(Department)) as Data_cleaned
                  from Employees;


SELECT EmployeeID,
       Name,
       Department,
       City,
       LEFT(Name, 3) AS left_value,
       RIGHT(City, 3) AS right_value,
       LEFT(Department, 2) AS left_value_Dep,
       CONCAT(
           LEFT(Name, 3), '|',
           RIGHT(City, 3), '|',
           LEFT(Department, 2), '|',
           EmployeeID
       ) AS Smart_ID
FROM Employees;


select Name,Department,City,left(Name,3) as Left_value,
                            left(city,3) as left_value,
                            concat(left(Name,3),"|",left(city,3) ,"|",Department) as Employee_tag
                            from Employees;  
                            
select Name,Mid(Name,2,7) as New_column from Employees;

select Name,substring(Name,2,7) as New_column from Employees;


select Department,replace(Department,"IT","Information Technology") from Employees;


