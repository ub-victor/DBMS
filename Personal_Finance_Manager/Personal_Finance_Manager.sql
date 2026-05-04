CREATE DATABASE finance_manager;
USE finance_manager;

-- Table 1: users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL, -- stored as plain text for simplicity (use hashing in production)
    role ENUM('admin','user') NOT NULL DEFAULT 'user'
);

-- Table 2: categories
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL,
    type ENUM('income','expense') NOT NULL
);

-- Table 3: transactions
CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    date DATE NOT NULL,
    description TEXT,
    type ENUM('income','expense') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

-- Table 4: budgets
CREATE TABLE budgets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    month_year DATE NOT NULL,  -- first day of month, e.g., '2025-03-01'
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    UNIQUE KEY unique_budget (user_id, category_id, month_year)
);

INSERT INTO users (username, password, role) VALUES ('admin', 'admin', 'admin');
Select * From categories;