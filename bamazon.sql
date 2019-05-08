DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;
CREATE TABLE `products` (
	   item_id INT NOT NULL AUTO_INCREMENT
	 , product_name VARCHAR(100)
	 , department_name VARCHAR(100)
	 , price INT NOT NULL
	 , stock_quantity INT NOT NULL
	 , PRIMARY KEY (item_id) 
);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Segway', 'Electronics', 250, 500);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Nintendo Switch', 'Electronics', 300, 1000);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Lightsaber', 'Sporting Goods', 2500, 250);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('The One Ring', 'Jewelry', 10000, 1);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Rubber Duck', 'Toys', 2, 2500);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Gnome', 'Lawn and Garden', 25, 30000);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Slinky', 'Toys', 350, 5);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Greater Amulet of Healing', 'Jewelry', 1200, 1250);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('Mjolnir', 'Sporting Goods', 100000, 2);

INSERT INTO `products` (product_name, department_name, price, stock_quantity)
VALUES ('The Shire', 'Lawn and Garden', 50000, 12);

SELECT * FROM `products`;