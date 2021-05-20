DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Salaries;

CREATE TABLE Departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Employees (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_Name VARCHAR   NOT NULL,
    Sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
--     FOREIGN KEY(Gym_ID) REFERENCES Gym (Gym_ID);
--     FOREIGN KEY(Trainer_ID) REFERENCES Trainers (Trainer_ID);
);

CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INTEGER   NOT NULL,
--     PRIMARY KEY (Trainer_ID)
    FOREIGN KEY(dept_no) REFERENCES Departments (dept_no);
    FOREIGN KEY(emp_no) REFERENCES Employees (emp_no);
);

CREATE TABLE dept_emp (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR   NOT NULL,
--     PRIMARY KEY (Payment_ID)
--     FOREIGN KEY(Member_ID) REFERENCES Members (Member_ID);
);

CREATE TABLE Titles (
    title_id INTEGER   NOT NULL,
    title VARCHAR   NOT NULL,
--     PRIMARY KEY (Payment_ID)
--     FOREIGN KEY(Member_ID) REFERENCES Members (Member_ID);
);

CREATE TABLE Salaries (
    emp_no INTEGER   NOT NULL,
    salary VARCHAR   NOT NULL,
--     PRIMARY KEY (Payment_ID)
--     FOREIGN KEY(Member_ID) REFERENCES Members (Member_ID);
);