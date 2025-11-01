CREATE DATABASE IF NOT EXISTS alx_book_store
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE alx_book_store;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
	title VARCHAR(130),
	FOREIGN KEY (author_id) REFERENCING Authors(author_id),
	publication_date DATE
)

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
	author_name VARCHAR(215)
)

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

CREATE TABLE Orders (
    order_id INT PRIMARY Key,
    Foreign Key (customer_id) REFERENCING Customers(customer_id),
    order_date DATE
)

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    Foreign Key (order_id) REFERENCING Orders(order_id),
    Foreign Key (book_id) REFERENCING Books(book_id),
    quantity DOUBLE
)	