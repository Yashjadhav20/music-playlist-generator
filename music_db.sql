create database music_db;
show databases;
use music_db;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Preferences (
    user_id INT,
    genre VARCHAR(50),
    mood VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Songs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    artist VARCHAR(100),
    genre VARCHAR(50),
    mood VARCHAR(50),
    spotify_id VARCHAR(100) UNIQUE
);

select * from Users;

