CREATE USER repl@'%' IDENTIFIED WITH mysql_native_password BY 'secret';
GRANT REPLICATION SLAVE ON *.* TO repl@'%';
CREATE DATABASE `birthdays`;
USE birthdays;
CREATE TABLE tourneys (
name varchar(30),
wins real,
best real,
size real
);
INSERT INTO tourneys (name, wins, best, size)
VALUES ('Dolly', '7', '245', '8.5'),
('Etta', '4', '283', '9'),
('Irma', '9', '266', '7'),
('Barbara', '2', '197', '7.5'),
('Gladys', '13', '273', '8');
CREATE TABLE dinners (
name varchar(30),
birthdate date,
entree varchar(30),
side varchar(30),
dessert varchar(30)
);
INSERT INTO dinners (name, birthdate, entree, side, dessert)
VALUES ('Dolly', '1946-01-19', 'steak', 'salad', 'cake'),
('Etta', '1938-01-25', 'chicken', 'fries', 'ice cream'),
('Irma', '1941-02-18', 'tofu', 'fries', 'cake'),
('Barbara', '1948-12-25', 'tofu', 'salad', 'ice cream'),
('Gladys', '1944-05-28', 'steak', 'fries', 'ice cream');
reset master;