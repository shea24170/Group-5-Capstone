
-- FIVE-STAR Retail System
-- Sprint 3: Sample Database Records
-- MySQL 8.0
-- Run after schema.sql on a new test database.

-- 5 test users (hashes are placeholders, not valid login credentials)
INSERT INTO auth_user
(UserID, username, email, password_hash, is_staff)
VALUES
(1, 'customer1', 'customer1@example.com', 'TEST_HASH_1', 0),
(2, 'customer2', 'customer2@example.com', 'TEST_HASH_2', 0),
(3, 'customer3', 'customer3@example.com', 'TEST_HASH_3', 0),
(4, 'customer4', 'customer4@example.com', 'TEST_HASH_4', 0),
(5, 'admin1', 'admin1@example.com', 'TEST_HASH_5', 1);

-- 5 categories
INSERT INTO products_category
(CategoryID, name, description)
VALUES
(1, 'Dairy', 'Milk, cheese and yoghurt'),
(2, 'Fruits', 'Fresh seasonal fruits'),
(3, 'Vegetables', 'Fresh vegetables'),
(4, 'Bakery', 'Bread and baked goods'),
(5, 'Beverages', 'Drinks and juices');

-- 10 products
INSERT INTO products_product
(ProductID, name, description, price, stock, CategoryID)
VALUES
(1, 'Full Cream Milk 2L', 'Fresh dairy milk', 3.50, 50, 1),
(2, 'Cheddar Cheese 500g', 'Cheddar cheese', 6.50, 30, 1),
(3, 'Red Apples 1kg', 'Fresh red apples', 4.50, 40, 2),
(4, 'Bananas 1kg', 'Fresh bananas', 3.80, 45, 2),
(5, 'Carrots 1kg', 'Fresh carrots', 2.90, 35, 3),
(6, 'Potatoes 2kg', 'Fresh potatoes', 5.00, 50, 3),
(7, 'White Bread', 'Fresh white bread loaf', 3.20, 25, 4),
(8, 'Croissants 4 Pack', 'Butter croissants', 6.00, 20, 4),
(9, 'Orange Juice 2L', 'Orange juice', 5.50, 30, 5),
(10, 'Mineral Water 1L', 'Bottled mineral water', 2.00, 60, 5);

-- 5 shopping carts
INSERT INTO cart_cart (CartID, UserID)
VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5);

-- 10 cart items
INSERT INTO cart_cartitem
(CartItemID, CartID, ProductID, quantity, subtotal)
VALUES
(1, 1, 1, 2, 7.00),
(2, 1, 3, 1, 4.50),
(3, 2, 2, 1, 6.50),
(4, 2, 4, 2, 7.60),
(5, 3, 5, 2, 5.80),
(6, 3, 6, 1, 5.00),
(7, 4, 7, 2, 6.40),
(8, 4, 8, 1, 6.00),
(9, 5, 9, 2, 11.00),
(10, 5, 10, 3, 6.00);

-- 10 orders
INSERT INTO orders_order
(OrderID, UserID, total, status, full_name, payment_method)
VALUES
(1, 1, 11.50, 'Delivered', 'Customer One', 'Card'),
(2, 2, 14.10, 'Processing', 'Customer Two', 'Card'),
(3, 3, 10.80, 'Pending', 'Customer Three', 'Cash'),
(4, 4, 12.40, 'Shipped', 'Customer Four', 'Card'),
(5, 5, 17.00, 'Delivered', 'Admin Test', 'Card'),
(6, 1, 7.00, 'Pending', 'Customer One', 'Cash'),
(7, 2, 6.50, 'Processing', 'Customer Two', 'Card'),
(8, 3, 5.80, 'Delivered', 'Customer Three', 'Card'),
(9, 4, 6.40, 'Shipped', 'Customer Four', 'Cash'),
(10, 5, 11.00, 'Pending', 'Admin Test', 'Card');

-- 15 order items
INSERT INTO orders_orderitem
(OrderItemID, OrderID, ProductID, quantity, price_at_purchase)
VALUES
(1, 1, 1, 2, 3.50),
(2, 1, 3, 1, 4.50),
(3, 2, 2, 1, 6.50),
(4, 2, 4, 2, 3.80),
(5, 3, 5, 2, 2.90),
(6, 3, 6, 1, 5.00),
(7, 4, 7, 2, 3.20),
(8, 4, 8, 1, 6.00),
(9, 5, 9, 2, 5.50),
(10, 5, 10, 3, 2.00),
(11, 6, 1, 2, 3.50),
(12, 7, 2, 1, 6.50),
(13, 8, 5, 2, 2.90),
(14, 9, 7, 2, 3.20),
(15, 10, 9, 2, 5.50);

-- 5 contact messages
INSERT INTO contact_contactmessage
(MessageID, UserID, name, email, message)
VALUES
(1, 1, 'Customer One', 'customer1@example.com', 'When will my order arrive?'),
(2, 2, 'Customer Two', 'customer2@example.com', 'Can I change my delivery address?'),
(3, 3, 'Customer Three', 'customer3@example.com', 'Is same-day delivery available?'),
(4, 4, 'Customer Four', 'customer4@example.com', 'I would like to return an item.'),
(5, 5, 'Admin Test', 'admin1@example.com', 'Testing the contact message feature.');
