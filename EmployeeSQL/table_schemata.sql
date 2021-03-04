DROP TABLE employees;
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

DROP TABLE titles
CREATE TABLE titles
(
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

DROP TABLE departments;
CREATE TABLE departments
(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

DROP TABLE dept_emp;
CREATE TABLE dept_emp
(
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
    PRIMARY KEY(emp_no,dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE dept_manager;
CREATE TABLE dept_manager
(
    dept_no VARCHAR NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY(dept_no,emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE salaries;
CREATE TABLE salaries
(
    emp_no INT PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);