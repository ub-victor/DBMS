CREATE DATABASE lab2_db;
USE lab2_db;

show databases;

CREATE TABLE bicycle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    start_time INT,
    end_time INT,
    total_hours INT,
    amount INT
);

CREATE TABLE mushroom (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    has_gills BOOLEAN,
    forest BOOLEAN,
    has_ring BOOLEAN,
    convex BOOLEAN
);

SELECT * FROM bicycle;

SELECT * FROM mushroom;
