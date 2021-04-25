//Dependencies//
const inquirer = require("inquirer")
const mysql = require("mysql")
const cTable = require("console.table");

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "password",
    database: "employee_trackerDB"
});

//Connection//
connection.connect(function(err) {
    if (err) throw err
    console.log("Connected as ID" + connection.threadId)
    startPrompt();
});

//Start prompt//
function startPrompt() {
    inquirer.prompt([
        {
            type: "list",
            message: "Please choose from the following.",
            name: "choice",
            choices: [
                "View employees",
                "View employees by role",
                "View employees by department",
                "Update an employee",
                "Add an employee",
                "Add a role",
                "Add a department"
            ]
        }
    ]).then(function(val) {
        switch (val.choice) {
            case "View employees":
                viewEmployees();
                break;

            case "View employees by role":
                viewRoles();
                break;

            case "View employees by department":
                viewDepartments();
                break;

            case "Update an employee":
                updateEmployee();
                break;

            case "Add an employee":
                addEmployee();
                break;

            case "Add a role":
                addRole();
                break;

            case "Add a department":
                addDepartment();
                break;

        }
        

    })
}
//View Employees//
