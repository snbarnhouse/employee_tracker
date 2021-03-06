# Unit 12 MySQL Homework: Employee Tracker

## Description

An employee tracker using mysql workbench, JS, express, inquirer, and mysql. You can view employees, role, departments, salaries, managers, update employees, and add employees.

GitHub Repository: https://github.com/snbarnhouse/employee_tracker 

Video Demonstation: https://drive.google.com/file/d/10iW3iMlgVvUYGshEXePvA-pIkn99nbd4/view 

![employee_tracker](https://user-images.githubusercontent.com/77131387/116703473-53bdc180-a998-11eb-860c-2cddae0c0aa1.png)

Developers are often tasked with creating interfaces that make it easy for non-developers to view and interact with information stored in databases. Often these interfaces are known as **C**ontent **M**anagement **S**ystems. In this homework assignment, your challenge is to architect and build a solution for managing a company's employees using node, inquirer, and MySQL.

## Instructions

Design the following database schema containing three tables:

* **department**:

  * **id** - INT PRIMARY KEY
  * **name** - VARCHAR(30) to hold department name

* **role**:

  * **id** - INT PRIMARY KEY
  * **title** -  VARCHAR(30) to hold role title
  * **salary** -  DECIMAL to hold role salary
  * **department_id** -  INT to hold reference to department role belongs to

* **employee**:

  * **id** - INT PRIMARY KEY
  * **first_name** - VARCHAR(30) to hold employee first name
  * **last_name** - VARCHAR(30) to hold employee last name
  * **role_id** - INT to hold reference to role employee has
  * **manager_id** - INT to hold reference to another employee that manages the employee being Created. This field may be null if the employee has no manager
  
Build a command-line application that at a minimum allows the user to:

  * Add departments, roles, employees

  * View departments, roles, employees

  * Update employee roles


We can frame this challenge as follows:

```
As a business owner
I want to be able to view and manage the departments, roles, and employees in my company
So that I can organize and plan my business
```
