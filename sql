MariaDB [libraryDB]> show databases;
+---------------------+
| Database            |
+---------------------+
| airline_reservation |
| anadb               |
| anamika             |
| books               |
| company             |
| empdb               |
| employees           |
| information_schema  |
| library             |
| librarydb           |
| mpec                |
| mysql               |
| mytable             |
| performance_schema  |
| phpmyadmin          |
| sardb               |
| test                |
+---------------------+
17 rows in set (0.015 sec)

MariaDB [libraryDB]> desc Users;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| UserID         | int(11)      | NO   | PRI | NULL    | auto_increment |
| UserName       | varchar(100) | YES  |     | NULL    |                |
| MembershipType | varchar(50)  | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
3 rows in set (0.017 sec)

MariaDB [libraryDB]> desc Books;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| BookID      | int(11)      | NO   | PRI | NULL    | auto_increment |
| Title       | varchar(100) | YES  |     | NULL    |                |
| Author      | varchar(100) | YES  |     | NULL    |                |
| Category    | varchar(50)  | YES  |     | NULL    |                |
| IsAvailable | tinyint(1)   | YES  |     | 1       |                |
+-------------+--------------+------+-----+---------+----------------+
5 rows in set (0.015 sec)

MariaDB [libraryDB]> desc Issues;
+------------+---------------+------+-----+---------+----------------+
| Field      | Type          | Null | Key | Default | Extra          |
+------------+---------------+------+-----+---------+----------------+
| IssueID    | int(11)       | NO   | PRI | NULL    | auto_increment |
| UserID     | int(11)       | YES  | MUL | NULL    |                |
| BookID     | int(11)       | YES  | MUL | NULL    |                |
| IssueDate  | date          | YES  |     | NULL    |                |
| ReturnDate | date          | YES  |     | NULL    |                |
| Fine       | decimal(10,2) | YES  |     | 0.00    |                |
+------------+---------------+------+-----+---------+----------------+
6 rows in set (0.018 sec)

MariaDB [libraryDB]>  select * from Users;
+--------+----------+----------------+
| UserID | UserName | MembershipType |
+--------+----------+----------------+
|      1 | User1    | Gold           |
|      2 | User2    | Silver         |
|      3 | anamika  | 123            |
|      4 | anamika  | 123            |
|      5 | anamika  | 123            |
+--------+----------+----------------+
5 rows in set (0.001 sec)

MariaDB [libraryDB]>
