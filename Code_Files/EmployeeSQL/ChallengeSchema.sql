
--Code to create titles table 

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR NOT NULL
);

--Uncomment and Run the following text to view imported titles data after you import the cvs files 
--SELECT * FROM titles;


--Code to create employees table 

Create TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)						
);

--Uncomment and Run the following text to view imported employees data after you import the cvs files 
--SELECT * FROM employees;


-- Code to create depatments table 


CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

--Uncomment and Run the following text to view imported departments data after you import the cvs files 
--SELECT * FROM departments;


-- Code to create dep_manager table 

Create TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (dept_no, emp_no) 
);

--Uncomment and Run the following text to view imported dept_manager data after you import the cvs files 
--SELECT * FROM dept_manager; 


-- Code to create dep_emp table

Create TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no) 
);

--Uncomment and Run the following text to view imported dep_emp data after you import the cvs files 
--SELECT * FROM dept_emp; 


-- Code to create salaries table 

Create TABLE salaries(
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

--Uncomment and Run the following text to view imported salaries data after you import the cvs files 
--SELECT * FROM salaries;


