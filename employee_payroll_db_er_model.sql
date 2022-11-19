-- UC- 10, 11 & 12




create table department
(
id int not null primary key identity(1,1),
department_name varchar(100)
);

insert into department values ('Sales'), ('Marketing'), ('Development');

select * from department;





create table company
(
id int primary key identity(1,1),
company_name varchar(100)
);

insert into company values ('Amazon'), ('Dmart');

select * from company;






create table payroll
(
id int not null primary key identity(1,1),
basic_pay money not null,
deductions money not null,
taxable_pay money not null,
net_pay money not null,
income_tax money not null
)

insert into payroll values (500000,3000,2000,22000,300),(600000,4000,3000,32000,400);

select * from payroll;






create table employee
(
id int not null primary key identity(1,1),
employee_name varchar(50) not null,
gender char(1) not null,
phone_number varchar(50),
payroll_id int not null foreign key references payroll(id),
company_id int not null foreign key references company(id),
start_date date not null default getdate()
);

insert into employee (employee_name, gender, phone_number, payroll_id, company_id) values ('Terissa', 'F', '9876543210', 2, 1);

select * from employee;






create table employee_department
(
employee_id int not null foreign key references employee(id),
department_id int not null foreign key references department(id)
);

insert into employee_department values (1, 1), (1, 2);

select * from employee_department;
