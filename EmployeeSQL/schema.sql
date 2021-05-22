DROP TABLE IF EXISTS dept_emp_junction ;
DROP TABLE IF EXISTS dept_manager_junction ;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Titles;

CREATE TABLE  Titles  (
     Title_id VARCHAR(255) PRIMARY KEY   NOT NULL,
     Title  VARCHAR(255)   NOT NULL    
);

CREATE TABLE  Employees  (
     id  int PRIMARY KEY  NOT NULL,
     Emp_no  int UNIQUE  NOT NULL,
     Title_id  VARCHAR(255)   NOT NULL,
     Birth_date  VARCHAR(255)   NOT NULL,
     First_name  VARCHAR(255)   NOT NULL,
     Last_name  VARCHAR(255)   NOT NULL,
     Sex  VARCHAR(255)   NOT NULL,
     Hire_date  VARCHAR(255)   NOT NULL,
     FOREIGN KEY( Title_id ) REFERENCES  Titles  ( Title_id )
);

CREATE TABLE  Salaries  (
     id  int  PRIMARY KEY NOT NULL,
     Emp_no  int   NOT NULL,
     Salary  int   NOT NULL,
	FOREIGN KEY( Emp_no ) REFERENCES  Employees  ( Emp_no )
);

CREATE TABLE  Departments  (
     Dept_no  VARCHAR(255) PRIMARY KEY  NOT NULL,
     Dept_name  VARCHAR(255)   NOT NULL
);

CREATE TABLE  Dept_emp_juncion  (
     id  int PRIMARY KEY  NOT NULL,
     emp_no  int   NOT NULL,
     Dept_no  VARCHAR(255)   NOT NULL,
	FOREIGN KEY( emp_no )  REFERENCES  Employees  ( Emp_no ),
	FOREIGN KEY( Dept_no ) REFERENCES  Departments  ( Dept_no ) 
);

CREATE TABLE  Dept_manager_junction  (
     id  int  PRIMARY KEY NOT NULL,
     Dept_no  VARCHAR(255)   NOT NULL,
     Emp_no  int   NOT NULL,
     FOREIGN KEY( Dept_no ) REFERENCES  Departments  ( Dept_no ),
	FOREIGN KEY( Emp_no ) REFERENCES  Employees  ( Emp_no )
);





