-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE  Departments  (
     id  int   NOT NULL,
     Dept_no  VARCHAR(255)   NOT NULL,
     Dept_name  VARCHAR(255)   NOT NULL,
    CONSTRAINT  pk_Departments  PRIMARY KEY (
         id 
     )
);

CREATE TABLE  Employees  (
     id  int   NOT NULL,
     Emp_no  int   NOT NULL,
     Emp_title_id  VARCHAR(255)   NOT NULL,
     Birth_date  VARCHAR(255)   NOT NULL,
     First_name  VARCHAR(255)   NOT NULL,
     Last_name  VARCHAR(255)   NOT NULL,
     Sex  VARCHAR(255)   NOT NULL,
     Hire_date  VARCHAR(255)   NOT NULL,
    CONSTRAINT  pk_Employees  PRIMARY KEY (
         id 
     )
);

CREATE TABLE  Salaries  (
     id  int   NOT NULL,
     Emp_no  int   NOT NULL,
     Salary  int   NOT NULL,
    CONSTRAINT  pk_Salaries  PRIMARY KEY (
         id 
     )
);

CREATE TABLE  Titles  (
     id  int   NOT NULL,
     Title_id  VARCHAR(255)   NOT NULL,
     Title  VARCHAR(255)   NOT NULL,
    CONSTRAINT  pk_Titles  PRIMARY KEY (
         id 
     )
);

CREATE TABLE  Dept_emp_juncion  (
     id  int   NOT NULL,
     emp_no  int   NOT NULL,
     Dept_no  VARCHAR(255)   NOT NULL,
    CONSTRAINT  pk_Dept_emp_juncion  PRIMARY KEY (
         id 
     )
);

CREATE TABLE  Dept_manager_junction  (
     id  int   NOT NULL,
     Dept_no  VARCHAR(255)   NOT NULL,
     Emp_no  int   NOT NULL,
    CONSTRAINT  pk_Dept_manager_junction  PRIMARY KEY (
         id 
     )
);

ALTER TABLE  Salaries  ADD CONSTRAINT  fk_Salaries_Emp_no  FOREIGN KEY( Emp_no )
REFERENCES  Employees  ( Emp_no );

ALTER TABLE  Dept_emp_juncion  ADD CONSTRAINT  fk_Dept_emp_juncion_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( Emp_no );

ALTER TABLE  Dept_emp_juncion  ADD CONSTRAINT  fk_Dept_emp_juncion_Dept_no  FOREIGN KEY( Dept_no )
REFERENCES  Departments  ( Dept_no );

ALTER TABLE  Dept_manager_junction  ADD CONSTRAINT  fk_Dept_manager_junction_Dept_no  FOREIGN KEY( Dept_no )
REFERENCES  Departments  ( Dept_no );

ALTER TABLE  Dept_manager_junction  ADD CONSTRAINT  fk_Dept_manager_junction_Emp_no  FOREIGN KEY( Emp_no )
REFERENCES  Employees  ( Emp_no );

