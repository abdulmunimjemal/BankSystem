# Basic Bank System

This is a basic bank system implemented in Java as a non-obligatory school project at AAiT (Addis Ababa Institute of Technology). The application allows users to perform basic banking operations such as creating accounts, making deposits and withdrawals, and transferring funds between accounts. The system uses MySQL for data storage, Swing for the graphical user interface, and follows object-oriented programming (OOP) concepts.

## Prerequisites

- Java Development Kit (JDK) installed on your system
- MySQL database server installed and running
- MySQL Connector/J JDBC driver for Java

## Getting Started

1. Clone the repository or download the source code as a zip file.

2. Import the project into your preferred Java Integrated Development Environment (IDE).

3. Create a new MySQL database for the bank system.

4. Import the database schema by executing the SQL script `db_schema.sql`. This script contains the necessary tables and initial data for the bank system.

5. Modify the connection settings in the `Constants.java` file located in the source code. Update the `CONNECTION_URL`, `DB_USERNAME`, and `DB_PASSWORD` constants to match your MySQL database configuration.

6. Make sure to import the MySQL Connector/J JDBC driver into your project. You can download the driver from the official MySQL website (https://dev.mysql.com/downloads/connector/j/).

7. Build and run the project.

## Usage

- Upon launching the application, you will be presented with the login screen.
  
- Use the following default login credentials: (You can change them in the database schema as well)

  Admin Login:
    Username: `admin`
    Password: `admin`

  User Login:
    Account Number: `1234`
    Password: `password`

  Manager Login:
    ID: `manager1`
    Password: `password`
- Use the provided username and password to log in as an administrator or accountant or normal user.

- As an administrator, you can manage customer accounts, view account details, and perform administrative tasks such as creating new administrators.

- As a customer, you can view your account details, make deposits and withdrawals, transfer funds, and update your personal information.

- The graphical user interface is built using Swing.

## Contributors

- [Abdulmunim](https://github.com/abdulmunimjemal)


## Acknowledgements

- This project was developed as a non-obligatory school project at AAiT.

