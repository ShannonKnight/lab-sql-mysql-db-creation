CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS customers;

DROP TABLE IF EXISTS cars;

CREATE TABLE cars (
    carID int auto_increment,
    VIN varchar(30),
    manufacturer varchar(30),
    model varchar(30),
    model_year YEAR,
    colour varchar(30),
    PRIMARY KEY (carID)
);

CREATE TABLE customers (
    custID int auto_increment,
    customerID int,
    cust_name varchar(30),
    phone varchar(30),
    email varchar(30),
    address varchar(30),
    city varchar(30),
    state_province varchar(30),
    country varchar(30),
    zip_postcode varchar(30),
    PRIMARY KEY (custID)
);

CREATE TABLE salesperson (
    salespersonID int auto_increment,
    staffID int,
    staffname varchar(30),
    store varchar(30),
    PRIMARY KEY (salespersonID)
);

CREATE TABLE invoice (
    invID int auto_increment,
    invoice_no int,
    dateofsale date,
    carID int,
    custID int,
    salespersonID int,
    PRIMARY KEY (invID),
    FOREIGN KEY (carID) REFERENCES cars(carID),
    FOREIGN KEY (custID) REFERENCES customers(custID),
    FOREIGN KEY (salespersonID) references salesperson(salespersonID)
);

DROP TABLE IF EXISTS stores;

CREATE TABLE stores (
    storeID int auto_increment,
    storename varchar(30),
    storeaddress varchar(30),
    PRIMARY KEY (storeID)
);