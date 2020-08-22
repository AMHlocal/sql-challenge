--Data Engineering
--Easier to type it all out then to use GenMyModel, also is good practice

CREATE TABLE Employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	hire_date DATE NOT NULL,
		PRIMARY KEY (emp_no)
);

SELECT * FROM Employees;

CREATE TABLE Departments(
	dept_no VARCHAR(10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
		PRIMARY KEY (dept_no)
);

SELECT * FROM Departments;

CREATE TABLE Department_Employees (
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

SELECT * FROM Department_Employees;

CREATE TABLE Department_Managers (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Department_Managers;

CREATE TABLE Salaries (
	emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

SELECT * FROM Salaries;

CREATE TABLE Titles (
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL
);

SELECT * FROM Titles;