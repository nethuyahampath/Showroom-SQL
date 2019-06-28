create database nethudbtest;



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


CREATE TABLE salary
(
    
	salary_id VARCHAR(10),
	emp_id VARCHAR(10),
	name varchar(50),
	designation varchar(20),
	basic_salary DOUBLE,
	allowance DOUBLE, 
	OT_hours INT,
	OT_rate DOUBLE,
	deduction DOUBLE,
	total_salary DOUBLE,
	epf DOUBLE,
    date date,
    etf DOUBLE,
    ot double,

    
    CONSTRAINT salary_pk PRIMARY KEY(salary_id),
    CONSTRAINT salary_fk1 FOREIGN KEY(emp_id) REFERENCES employee(emp_id) ON UPDATE CASCADE ON DELETE CASCADE 
);




CREATE TABLE delivery
(
	delivery_id VARCHAR(10),
    address VARCHAR(50),
    delivery_date date,
    vehicle_id VARCHAR(10),
    
    CONSTRAINT delivery_pk PRIMARY KEY(delivery_id)
);


CREATE TABLE repair_detail
(
	repair_detail_id VARCHAR(10),
    repair_date date,
    description VARCHAR(200),
    item_code VARCHAR(20),
    
    CONSTRAINT repair_detail_pk PRIMARY KEY(repair_detail_id)
);


CREATE TABLE repair_expense
(
	expense_id VARCHAR(10),
     repair_detail_id  VARCHAR(10),
    expense_date date,
    amount DOUBLE,
    description varchar(45),
    
    CONSTRAINT repair_expense_pk PRIMARY KEY(expense_id),
    CONSTRAINT repair_expense_fk1 FOREIGN KEY(repair_detail_id) REFERENCES repair_detail(repair_detail_id) ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE delivery_expense
(
	expense_id VARCHAR(10),
    delivery_id VARCHAR(10),
    expense_date date,
    amount DOUBLE,
    description varchar(45),
    
    
    CONSTRAINT delivery_expense_pk PRIMARY KEY(expense_id),
    CONSTRAINT delivery_expense_fk1 FOREIGN KEY(delivery_id) REFERENCES delivery(delivery_id) ON DELETE SET NULL ON UPDATE CASCADE
);



CREATE TABLE showroom_expense
(
	expense_id VARCHAR(10),
    utility VARCHAR(10),
    expense_date date,
    amount DOUBLE,
    type varchar(45),
    description varchar(45),
    
    
    CONSTRAINT showroom_expense_pk PRIMARY KEY(expense_id)
);



select * from salary;

insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions , OtHrs , OtRate ) values("E15" , "Amila" , "Perera" , "123456152v" , "address1" , "amila@gmail.com" , "21212" , "worker" , 15000 , 3000 , 1000 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E16" , "Pasan" , "jjjj" , "154852163v" , "address2" ,"pasan@gmail.com" , "212121" , "Manager" , 20000 , 2000 , 500 , 10 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E17" , "Shenal" , "Perera" , "142578965v" , "address3" ,"shenal@gmail.com" , "212121" , "worker" , 15000 , 2000 , 1200 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E18" , "Sheril" , "Soyza" , "148524151v" ,"address4" , "sheril@gmail.com" , "121212" , "clark" , 20000 , 1000 , 1000 , 5 , 40);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E19" , "Nuwan" , "Jayakodi" , "125469856v" ,"address5" , "nuwan@gmail.com" , "212121" , "worker" , 30000 , 2000 , 950 , 8 , 50);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions , OtHrs , OtRate ) values("E20" , "Amila" , "Perera" , "123456152v" , "address1" , "amila@gmail.com" , "21212" , "worker" , 15000 , 3000 , 1000 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E21" , "Pasan" , "jjjj" , "154852163v" , "address2" ,"pasan@gmail.com" , "212121" , "Manager" , 20000 , 2000 , 500 , 10 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E22" , "Shenal" , "Perera" , "142578965v" , "address3" ,"shenal@gmail.com" , "212121" , "worker" , 15000 , 2000 , 1200 , 5 , 60);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E23" , "Sheril" , "Soyza" , "148524151v" ,"address4" , "sheril@gmail.com" , "121212" , "clark" , 20000 , 1000 , 1000 , 5 , 40);
insert into employee (emp_id , first_name , last_name , NIC , address , email , contact_no , designation , basicSalary , allowances , deductions, OtHrs , OtRate ) values("E24" , "Nuwan" , "Jayakodi" , "125469856v" ,"address5" , "nuwan@gmail.com" , "212121" , "worker" , 30000 , 2000 , 950 , 8 , 50);



insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D1" , "address6" , "2017/12/15" , "GH4513");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D2" , "address7" , "2017/12/16" , "GH4514");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D3" , "address8" , "2017/12/17" , "GH4515");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D4" , "address9" , "2017/12/18" , "GH4516");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D5" , "address10" , "2017/12/25" , "GH45452");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D6" , "address6" , "2017/12/15" , "GH4513");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D7" , "address7" , "2017/12/16" , "GH4514");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D8" , "address8" , "2017/12/17" , "GH4515");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D9" , "address9" , "2017/12/18" , "GH4516");
insert into delivery (delivery_id , address , delivery_date , vehicle_id ) values("D10" , "address10" , "2017/12/25" , "GH45452");

insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R6" , "2017/12/15" ,  "saasass" , "Item4");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R7" , "2017/12/16" ,  "dssds" , "Item5");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R8" , "2017/12/17" , "sasasaw" , "Item6");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R9" , "2017/12/18" ,  "xzxzxzx" , "Item7");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R10" , "2017/12/19" , "ewewwee" , "Item8");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R11" , "2017/12/15" ,  "saasass" , "Item4");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R12" , "2017/12/16" ,  "dssds" , "Item5");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R13" , "2017/12/17" , "sasasaw" , "Item6");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R14" , "2017/12/18" ,  "xzxzxzx" , "Item7");
insert into repair_detail (repair_detail_id , repair_date , description , item_code ) values("R15" , "2017/12/19" , "ewewwee" , "Item8");
