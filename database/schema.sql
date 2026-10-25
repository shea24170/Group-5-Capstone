
-- FIVE-STAR Retail System
-- Sprint 3: Database Schema
-- MySQL 8.0

CREATE TABLE auth_user (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(150) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_staff BOOLEAN NOT NULL DEFAULT FALSE,
    date_joined DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products_category (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE products_product (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    CategoryID INT NOT NULL,
    FOREIGN KEY (CategoryID)
        REFERENCES products_category(CategoryID),
    CHECK (price >= 0),
    CHECK (stock >= 0)
);

CREATE TABLE cart_cart (
    CartID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID)
        REFERENCES auth_user(UserID)
);

CREATE TABLE cart_cartitem (
    CartItemID INT AUTO_INCREMENT PRIMARY KEY,
    CartID INT NOT NULL,
    ProductID INT NOT NULL,
    quantity INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (CartID)
        REFERENCES cart_cart(CartID),
    FOREIGN KEY (ProductID)
        REFERENCES products_product(ProductID),
    CHECK (quantity > 0)
);

CREATE TABLE orders_order (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'Pending',
    full_name VARCHAR(150) NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID)
        REFERENCES auth_user(UserID)
);

CREATE TABLE orders_orderitem (
    OrderItemID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    quantity INT NOT NULL,
    price_at_purchase DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (OrderID)
        REFERENCES orders_order(OrderID),
    FOREIGN KEY (ProductID)
        REFERENCES products_product(ProductID),
    CHECK (quantity > 0)
);

CREATE TABLE contact_contactmessage (
    MessageID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID)
        REFERENCES auth_user(UserID)
);
