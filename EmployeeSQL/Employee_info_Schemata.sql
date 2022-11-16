
---Table department
CREATE TABLE departments (
    dept_no varchar  NOT NULL ,
    dept_name varchar  NOT NULL ,
    PRIMARY KEY (
        dept_no
    )
);

select * from departments

---Table Demt_emp
CREATE TABLE dept_emp (
    emp_no int  NOT NULL ,
    dept_no varchar  NOT NULL ,
    PRIMARY KEY (
        emp_no,dept_no
    )
);

select * from dept_emp

---Table dept_manager
CREATE TABLE dept_manager (
    dept_no VARCHAR  NOT NULL ,
    emp_no int  NOT NULL ,
    PRIMARY KEY (
        dept_no,emp_no
    )
);

select * from dept_manager

---Table employees
CREATE TABLE employees (
    emp_no int  NOT NULL ,
    emp_title_id VARCHAR  NOT NULL ,
    birth_date VARCHAR  NOT NULL ,
    first_name VARCHAR  NOT NULL ,
    last_name VARCHAR  NOT NULL ,
    sex VARCHAR  NOT NULL ,
    hire_date VARCHAR  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

select * from employees

---Table Salaries
CREATE TABLE salaries (
    emp_no int  NOT NULL ,
    salary int  NOT NULL ,
    PRIMARY KEY (
        emp_no
    )
);

select * from salaries

---Table Titles
CREATE TABLE titles (
    title_id VARCHAR  NOT NULL ,
    title VARCHAR  NOT NULL ,
    PRIMARY KEY (
        title_id
    )
);

select * from titles
drop table titles

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

