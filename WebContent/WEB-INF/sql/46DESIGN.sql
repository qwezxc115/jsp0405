DESC w3schools.Products;

USE mydb3;

CREATE TABLE Products(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    categoryName VARCHAR(255)
);