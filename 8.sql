CREATE TABLE employee
(
	emp_id VARCHAR(10),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    NIC VARCHAR(10),
    address VARCHAR(50),
    email VARCHAR(30),
    contact_no VARCHAR(10),
    designation VARCHAR(50),
    basicSalary double,
    allowances double,
    deductions double,
    OtHrs double,
    OtRate double,
    
    
    CONSTRAINT employee_pk PRIMARY KEY(emp_id)
);
drop table employee
drop table salary

SELECT * FROM employee_attendance

CREATE TABLE employee_attendance
(
	attendance_date date,
    attendance_time time,
    emp_id VARCHAR(10),
    departure_time time,
    
    CONSTRAINT employee_attendance_primary PRIMARY KEY(attendance_date, emp_id),
    CONSTRAINT employee_attendance_fk1 FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON UPDATE CASCADE ON DELETE CASCADE 
);

CREATE TABLE salary
(
    
	salary_id VARCHAR(10),
	emp_id VARCHAR(10),
	emp_name varchar(50),
	designation varchar(20),
	basic_salary DOUBLE,
	allowance DOUBLE, 
	OT_hours INT,
	OT_rate DOUBLE,
	deduction DOUBLE,
	total_salary DOUBLE,
	epf DOUBLE,
    salary_date date,
    etf DOUBLE,
    ot double,

    
    CONSTRAINT salary_pk PRIMARY KEY(salary_id),
    CONSTRAINT salary_fk1 FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON UPDATE CASCADE ON DELETE CASCADE 
);


select * from salary


insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions , OtHrs , OtRate) values("E15" , "Amila" , "Perera" , "123456152v" , "address1" , "amila@gmail.com" , "21212" , "worker" , 15000 , 3000 , 1000 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate) values("E16" , "Pasan" , "jjjj" , "154852163v" , "address2" ,"pasan@gmail.com" , "212121" , "Manager" , 20000 , 2000 , 500 , 10 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate) values("E17" , "Shenal" , "Perera" , "142578965v" , "address3" ,"shenal@gmail.com" , "212121" , "worker" , 15000 , 2000 , 1200 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate) values("E18" , "Sheril" , "Soyza" , "148524151v" ,"address4" , "sheril@gmail.com" , "121212" , "clark" , 20000 , 1000 , 1000 , 5 , 40);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate) values("E19" , "Nuwan" , "Jayakodi" , "125469856v" ,"address5" , "nuwan@gmail.com" , "212121" , "worker" , 30000 , 2000 , 950 , 8 , 50);
