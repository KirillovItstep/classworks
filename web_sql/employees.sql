
drop table if exists employer;
drop table if exists salary_grade;
drop table if exists department;
CREATE TABLE salary_grade (grade integer,min_salary integer,max_salary integer);
CREATE TABLE employer (id integer not null primary key autoincrement,name varchar(15) not null,job varchar(10),manager_id integer,hire_date text,salary float,commission float,department_id integer);
CREATE TABLE department (id integer not null primary key autoincrement,name varchar(20) not null,location varchar(15));

insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (68319,'KAYLING','PRESIDENT',null,'1991-11-18',6000.00,null,1001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
values (66928, 'BLAZE', 'MANAGER', 68319, '1991-05-01', 2750.00,null, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
values (67832, 'CLARE', 'MANAGER', 68319, '1991-06-09', 2550.00, null, 1001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (65646, 'JONAS', 'MANAGER', 68319, '1991-04-02', 2957.00, null, 2001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (67858, 'SCARLET', 'ANALYST', 65646, '1997-04-19', 3100.00, null, 2001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (69062, 'FRANK', 'ANALYST', 65646, '1991-12-03', 3100.00, null, 2001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (63679, 'SANDRINE', 'CLERK', 69062, '1990-12-18', 900.00, null, 2001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (64989, 'ADELYN', 'SALESMAN', 66928, '1991-02-20', 1700.00, 400.00, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (65271, 'WADE', 'SALESMAN', 66928, '1991-02-22', 1350.00, 600.00, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (66564, 'MADDEN', 'SALESMAN', 66928, '1991-09-28', 1350.00, 1500.00, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (68454, 'TUCKER', 'SALESMAN', 66928, '1991-09-08', 1600.00, 0.00, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (68736, 'ADNRES', 'CLERK', 67858, '1997-05-23', 1200.00, null, 2001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (69000, 'JULIUS', 'CLERK', 66928, '1991-12-03', 1050.00, null, 3001);
insert into employer(id,name,job,manager_id,hire_date,salary,commission,department_id)
 values (69324, 'MARKER', 'CLERK', 67832, '1992-01-23', 1400.00, null, 1001);
insert into department (id,name,location) values (1001, 'FINANCE', 'SYDNEY');
insert into department (id,name,location) values (2001, 'AUDIT', 'MELBOURNE');
insert into department (id,name,location) values (3001, 'MARKETING', 'PERTH');
insert into department (id,name,location) values (4001, 'PRODUCTION', 'BRISBANE');
insert into salary_grade (grade,min_salary,max_salary) values (1,800,1300);
insert into salary_grade (grade,min_salary,max_salary) values (2,1301,1500);
insert into salary_grade (grade,min_salary,max_salary) values (3,1501,2100);
insert into salary_grade (grade,min_salary,max_salary) values (4,2101,3100);
insert into salary_grade (grade,min_salary,max_salary) values (5,3101,9999);
