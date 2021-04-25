--Deleting DB if it already exists and creating new DB--
Drop DATABASE IF EXISTS employee_trackerDB;
CREATE DATABASE employee_trackerDB;

USE employee_trackerDB;

--Table for department--
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

--Table for department--
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

--Table for role of employee--
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    manager_id INT,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

--Hospital Departments--
INSERT INTO department (name)
VALUE ("Surgery");
INSERT INTO department (name)
VALUE ("Radiology");
INSERT INTO departemtn (name)
VALUE ("Neurology");
INSERT INTO department (name)
VALUE ("Intensive Care Unit");

--Employee roles--
INSERT INTO role (title, salary, department_id)
VALUE ("Surgeon", 500000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Head Nurse", 100000, 4);
INSERT INTO role (title, salary, department_id)
VALUE ("Neurologist", 200000, 3);
INSERT INTO role (title, salary, department_id)
VALUE ("Head Surgeon", 610000, 1);
INSERT INTO role (title, salary, department_id)
VALUE ("Radiologist", 310000, 2);
INSERT INTO role (title, salary, department_id)
VALUE ("Trauma Nurse", 130000, 4);

--Employees--
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Drake", "Ramoray", 4, 1);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Ann", "Perkins", null, 2);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Meredith", "Grey", null, 3);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Gregory", "House", null, 4);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Jack", "Shephard", null, 5);
INSERT INTO employee (first_name, last_name, manager_id, role_id)
VALUE ("Poppy", "Pomfrey", 2, 6);

--Select for tables in SQL workbench--
SELECT * FROM department;
SELECT * FROM role;
SELECT * FROM employee;
