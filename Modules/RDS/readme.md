C:\Users\Administrator\Downloads\mysql-8.0.20-winx64\mysql-8.0.20-winx64\bin>mysql.exe --host=terraform-20200627171504172700000001.covwcs9zsipd.us-east-1.rds.amazonaws.com
ERROR 1045 (28000): Access denied for user 'ODBC'@'59.88.133.203' (using password: NO)

C:\Users\Administrator\Downloads\mysql-8.0.20-winx64\mysql-8.0.20-winx64\bin>mysql.exe --host=terraform-20200627171504172700000001.covwcs9zsipd.us-east-1.rds.amazonaws.commysql.exe --host=terraform-20200627171504172700000001.covwcs9zsipd.us-east-1.rds.amazonaws.com --port=3306 --user=foo --password
Enter password:
ERROR 1045 (28000): Access denied for user 'foo'@'59.88.133.203' (using password: NO)

C:\Users\Administrator\Downloads\mysql-8.0.20-winx64\mysql-8.0.20-winx64\bin>
C:\Users\Administrator\Downloads\mysql-8.0.20-winx64\mysql-8.0.20-winx64\bin>
C:\Users\Administrator\Downloads\mysql-8.0.20-winx64\mysql-8.0.20-winx64\bin>mysql.exe --host=terraform-20200627171504172700000001.covwcs9zsipd.us-east-1.rds.amazonaws.com --port=3306 --user=foo --password
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 5.7.22 Source distribution

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| innodb             |
| mydb               |
| mysql              |
| performance_schema |
| sys                |
| yash               |
+--------------------+
7 rows in set (0.24 sec)

mysql> use yash
Database changed
mysql> show tables;
+----------------+
| Tables_in_yash |
+----------------+
| tutorials_tbl  |
+----------------+
1 row in set (0.24 sec)

mysql> desc tutorials_tbl
    -> ;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| tutorial_id     | int(11)      | NO   |     | NULL    |       |
| tutorial_title  | varchar(100) | NO   |     | NULL    |       |
| tutorial_author | varchar(40)  | NO   |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.24 sec)

mysql> select * into tutorials_tbl;
ERROR 1327 (42000): Undeclared variable: tutorials_tbl
mysql> select * from tutorials_tbl;
+-------------+----------------+-----------------+
| tutorial_id | tutorial_title | tutorial_author |
+-------------+----------------+-----------------+
|           1 | alpha          | beta            |
|           2 | alpha1         | beta2           |
+-------------+----------------+-----------------+
2 rows in set (0.24 sec)

mysql>

