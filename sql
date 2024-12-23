#mysql -u root -p
 create database LibraryDB;
Query OK, 1 row affected (0.001 sec)

  use LibraryDB;
Database changed
 CREATE TABLE admins (
         admin_id INT AUTO_INCREMENT PRIMARY KEY,
         username VARCHAR(50) NOT NULL UNIQUE,
         password VARCHAR(255) NOT NULL
     );
Query OK, 0 rows affected (0.024 sec)

CREATE TABLE users (
         user_id INT AUTO_INCREMENT PRIMARY KEY,
         name VARCHAR(100),
         email VARCHAR(100) UNIQUE,
         phone VARCHAR(15),
         membership_type VARCHAR(50),
         password VARCHAR(255)
     );
Query OK, 0 rows affected (0.024 sec)

 CREATE TABLE books (
         book_id INT AUTO_INCREMENT PRIMARY KEY,
         title VARCHAR(255),
         author VARCHAR(100),
         genre VARCHAR(50),
         publication_year INT,
         copies_available INT
     );
Query OK, 0 rows affected (0.010 sec)

CREATE TABLE transactions (
         transaction_id INT AUTO_INCREMENT PRIMARY KEY,
         user_id INT,
         book_id INT,
         issue_date DATE,
         return_date DATE,
         status VARCHAR(50),
         fine_amount DECIMAL(10, 2),
         FOREIGN KEY (user_id) REFERENCES users(user_id),
         FOREIGN KEY (book_id) REFERENCES books(book_id)
     );
Query OK, 0 rows affected (0.030 sec)

desc Users;
+-----------------+--------------+------+-----+---------+----------------+
| Field           | Type         | Null | Key | Default | Extra          |
+-----------------+--------------+------+-----+---------+----------------+
| user_id         | int(11)      | NO   | PRI | NULL    | auto_increment |
| name            | varchar(100) | YES  |     | NULL    |                |
| email           | varchar(100) | YES  | UNI | NULL    |                |
| phone           | varchar(15)  | YES  |     | NULL    |                |
| membership_type | varchar(50)  | YES  |     | NULL    |                |
| password        | varchar(255) | YES  |     | NULL    |                |
+-----------------+--------------+------+-----+---------+----------------+
6 rows in set (0.015 sec)

 desc admins;
+----------+--------------+------+-----+---------+----------------+
| Field    | Type         | Null | Key | Default | Extra          |
+----------+--------------+------+-----+---------+----------------+
| admin_id | int(11)      | NO   | PRI | NULL    | auto_increment |
| username | varchar(50)  | NO   | UNI | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |
+----------+--------------+------+-----+---------+----------------+
3 rows in set (0.015 sec)

 desc books;
+------------------+--------------+------+-----+---------+----------------+
| Field            | Type         | Null | Key | Default | Extra          |
+------------------+--------------+------+-----+---------+----------------+
| book_id          | int(11)      | NO   | PRI | NULL    | auto_increment |
| title            | varchar(255) | YES  |     | NULL    |                |
| author           | varchar(100) | YES  |     | NULL    |                |
| genre            | varchar(50)  | YES  |     | NULL    |                |
| publication_year | int(11)      | YES  |     | NULL    |                |
| copies_available | int(11)      | YES  |     | NULL    |                |
+------------------+--------------+------+-----+---------+----------------+
6 rows in set (0.017 sec)

 desc transactions;
+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| transaction_id | int(11)       | NO   | PRI | NULL    | auto_increment |
| user_id        | int(11)       | YES  | MUL | NULL    |                |
| book_id        | int(11)       | YES  | MUL | NULL    |                |
| issue_date     | date          | YES  |     | NULL    |                |
| return_date    | date          | YES  |     | NULL    |                |
| status         | varchar(50)   | YES  |     | NULL    |                |
| fine_amount    | decimal(10,2) | YES  |     | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+
7 rows in set (0.013 sec)

 show tables;
+---------------------+
| Tables_in_librarydb |
+---------------------+
| admins              |
| books               |
| transactions        |
| users               |
+---------------------+
4 rows in set (0.001 sec)

INSERT INTO users (name, password)
     VALUES ('anamika', '123');
Query OK, 1 row affected (0.004 sec)

 select * from users;
+---------+---------+-------+-------+-----------------+----------+
| user_id | name    | email | phone | membership_type | password |
+---------+---------+-------+-------+-----------------+----------+
|       1 | anamika | NULL  | NULL  | NULL            | 123      |
+---------+---------+-------+-------+-----------------+----------+
1 row in set (0.000 sec)
