# creating my sql table with the name employees

CREATE TABLE myproject.employees (
    emp_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    Gender INT NOT NULL,
    education_ VARCHAR(255), # mistake 'education_', it should be 'education'
    job_type VARCHAR(255),
    over_time int,
    PRIMARY KEY (emp_id)
);

# correcting the mistake using modify and remane.

alter table myproject.employees 
modify  gender  varchar (255);

ALTER TABLE myproject.employees RENAME COLUMN education_ TO education;
 
# how to use the insert into statement

insert into myproject.employees (
		first_name,
        last_name,
        email_address,
        Gender,
        education_,
        job_type,
        over_time
        )
values (
		'Ousmane',
		'Bassoum',
		'ousmanebasslight1@gmail.com',
		'm',
		'Data analyst',
		'data analyst',
        '2'
        
);

# how to select a table
select * from myproject.employees;

# how to use select 'distinct' statement.

select distinct first_name from myproject.employees
where emp_id = 1;

# how to use 'where' clause

select * from myproject.employees
where last_name = 'bassoum';
 
 # how to use 'and','or','not'
 
 select * from myproject.employees
 where gender=1 and first_name = 'Ousmane';
 
 # or
 select * from myproject.employees
 where education = 'data analyst' or emp_id = 1;
 
 # not
 select * from myproject.employees
 where not education = 'data analyst';
 
 update myproject.employees
 set education = 'data analyst';