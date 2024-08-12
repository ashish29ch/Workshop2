create table Customers(customer_id serial PRIMARY KEY,name varchar(30),email varchar(30));
alter table Orders add CONSTRAINT unique_cutomer_id UNIQUE(customer_id);
alter table Orders add CONSTRAINT FK_customer_id FOREIGN KEY(customer_id) REFERENCES Customers(customer_id);
create table Orders(order_id serial PRIMARY KEY,customer_id int,order_date date,total_amount int);

create table products(product_id serial PRIMARY KEY,product_name varchar(30),price int);
create table order_items(order_item_id serial PRIMARY KEY,order_id int,FOREIGN KEY (order_id) REFERENCES Orders(order_id),product_id int,FOREIGN KEY (product_id) REFERENCES products(product_id),quantity int);

create table categories(category_id serial PRIMARY KEY,category_name varchar(30));

-- Adding data inside tables
-- Insert sample data into Customers
INSERT INTO Customers (name, email) VALUES ('Saket Kumar', 'saket.kum@example.com');
INSERT INTO Customers (name, email) VALUES ('Ashish', 'Ashish.@example.com');

-- Insert sample data into Orders
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES (1, '2024-08-01', 500);
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES (2, '2024-08-02', 300);

-- Insert sample data into Products
INSERT INTO products (product_name, price) VALUES ('Product A', 100);
INSERT INTO products (product_name, price) VALUES ('Product B', 200);

-- Insert sample data into Order_Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES (1, 1, 2);
INSERT INTO order_items (order_id, product_id, quantity) VALUES (2, 2, 1);

-- Insert sample data into Categories
INSERT INTO categories (category_name) VALUES ('Category 1');
INSERT INTO categories (category_name) VALUES ('Category 2');


-- create view to show top selling products
CREATE VIEW TopSelling AS
SELECT oi.*, p.product_name, p.price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id;

select * from TopSelling;
