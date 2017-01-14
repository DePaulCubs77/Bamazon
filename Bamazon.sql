CREATE DATABASE bamazon;
use bamazon;
CREATE TABLE Products (
	item_id INTEGER AUTO_INCREMENT NOT NULL,
	product_name VARCHAR (255) NULL,
	department_name VARCHAR (255) NULL,
	price DECIMAL (10,2),
	stock_quantity INTEGER (11),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("chair", "furniture", 20.99, 16);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("table", "furniture", 20.99, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("bed", "furniture", 20.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("sofa", "furniture", 20.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("lovechairs", "furniture", 20.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("mattress", "furniture", 20.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("armoire", "furniture", 20.99, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("wine rack", "furniture", 20.99, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("bookcase", "furniture", 20.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ("desk", "furniture", 20.99, 7);

SELECT 
    *
FROM
    products;