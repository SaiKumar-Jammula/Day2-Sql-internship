
INSERT INTO categories (category_name)
VALUES 
('Electronics'),
('Books'),
('Clothing');


INSERT INTO products (product_name, price, stock_quantity, category_id)
VALUES 
('Smartphone', 25000, 100, 1),
('Laptop', 60000, 50, 1),
('T-shirt', 500, 200, 3),
('Novel', 300, 120, 2),
('Headphones', 1500, DEFAULT, 1); 

select * from products;

INSERT INTO customers (customer_name, customer_email, customer_phone, address)
VALUES 
('Sai Kumar', 'sai@gmail.com', '9345672386', 'Hyderabad'),
('Vijay', 'vij@gmail.com', '111111111', 'Mumbai'),
('Sai NAni', 'nani@gmail.com', '7787652323', 'Khammam');

SELECT * FROM customers;

INSERT INTO orders (customer_id, order_date, status)
VALUES
(1, '2025-08-01', 'Processing'),
(2, '2025-08-03', 'Shipped');

select * from orders;

INSERT INTO order_items (order_id, customer_id, product_id, quantity, price)
VALUES
(3, 1, 1, 1, 25000.00),  
(3, 1, 5, 2, 3000.00),   
(4, 2, 2, 1, 60000.00);  

select * from order_items;
INSERT INTO payments (order_id, payment_date, amount, method)
VALUES
(3, '2025-08-01', 31000.00, 'Credit Card'),
(4, '2025-08-03', 60000.00, 'UPI');



UPDATE products
SET stock_quantity = stock_quantity - 1
WHERE product_id = 1;

select * from products ;

UPDATE orders
SET status = 'Delivered'
WHERE order_id = 3;

UPDATE customers
SET customer_phone = '91105623983'
WHERE customer_email = 'sai@gmail.com';


DELETE FROM order_items
WHERE orderitems_id = 4;

select * from order_items;


DELETE FROM payments
WHERE payment_id = 2;

-- NULL HANDILING
INSERT INTO orders (customer_id, order_date, status)
VALUES (3, '2025-08-05', NULL);

-- INSERT WITHOUT NULL
INSERT INTO products (product_name, price, category_id)
VALUES ('Notebook', 50, 2);
