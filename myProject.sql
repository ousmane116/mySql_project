# creating my sql table with the name employees

create table myproject.employees(
    emp_id int NOT NULL AUTO_INCREMENT,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    Gender int NOT NULL,
    education_ varchar(255),
    job_type varchar(255),
    over_time varchar(255),
primary key (emp_id)
);
