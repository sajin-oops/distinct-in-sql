mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.03 sec)

mysql> use sajinak
Database changed
mysql> use student;
ERROR 1049 (42000): Unknown database 'student'
mysql> use employees;
ERROR 1049 (42000): Unknown database 'employees'
mysql> use employee;
ERROR 1049 (42000): Unknown database 'employee'
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.01 sec)

mysql> select*from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
| aaron     | 122   | aaron2@gmail.com      | 13332    |
| lijin     | 123   | lijin*@gmail.com      | 14444    |
+-----------+-------+-----------------------+----------+
4 rows in set (0.00 sec)

mysql> use databases;
ERROR 1049 (42000): Unknown database 'databases'
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> use sajin;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_sajin |
+-----------------+
| ak              |
| employees       |
+-----------------+
2 rows in set (0.00 sec)

mysql> use employees;
ERROR 1049 (42000): Unknown database 'employees'
mysql> select* from employees;
+-------+---------+------------------------+---------+
| empid | empname | jobdescription         | salary  |
+-------+---------+------------------------+---------+
| 1     | sajin   | data scientist         | 1000000 |
| 2     | aaron   | data scientist         | 1000000 |
| 3     | lijin   | data analyst           | 2000000 |
| 4     | sam     | data engineer          | 3000000 |
| 5     | ram     | data pipeline engineer |  200000 |
| 6     | aurun   | AI ML ENGINEER         |  100000 |
| 7     | sea     | front-end              |   10000 |
| 8     | siva    | back-end               |   20000 |
| 9     | tharun  | full-stack             |   10000 |
| 10    | mani    | data scientist         | 7000000 |
| 11    | gururan | data scientist         | 9000000 |
| 12    | manju   | devops                 | 1000000 |
| 13    | silent  | ml engineer            |    1070 |
+-------+---------+------------------------+---------+
13 rows in set (0.04 sec)

mysql> SELECT DISTINCT jobdescription from employees;
+------------------------+
| jobdescription         |
+------------------------+
| data scientist         |
| data analyst           |
| data engineer          |
| data pipeline engineer |
| AI ML ENGINEER         |
| front-end              |
| back-end               |
| full-stack             |
| devops                 |
| ml engineer            |
+------------------------+
10 rows in set (0.01 sec)

mysql> SELECT DISTINCT empid AND jobdescription from employees;
+--------------------------+
| empid AND jobdescription |
+--------------------------+
|                        0 |
+--------------------------+
1 row in set, 13 warnings (0.00 sec)

mysql> SELECT DISTINCT empid,jobdescription from employees;
+-------+------------------------+
| empid | jobdescription         |
+-------+------------------------+
| 1     | data scientist         |
| 2     | data scientist         |
| 3     | data analyst           |
| 4     | data engineer          |
| 5     | data pipeline engineer |
| 6     | AI ML ENGINEER         |
| 7     | front-end              |
| 8     | back-end               |
| 9     | full-stack             |
| 10    | data scientist         |
| 11    | data scientist         |
| 12    | devops                 |
| 13    | ml engineer            |
+-------+------------------------+
13 rows in set (0.00 sec)

mysql> SELECT DISTINCT salary,jobdescription from employees;
+---------+------------------------+
| salary  | jobdescription         |
+---------+------------------------+
| 1000000 | data scientist         |
| 2000000 | data analyst           |
| 3000000 | data engineer          |
|  200000 | data pipeline engineer |
|  100000 | AI ML ENGINEER         |
|   10000 | front-end              |
|   20000 | back-end               |
|   10000 | full-stack             |
| 7000000 | data scientist         |
| 9000000 | data scientist         |
| 1000000 | devops                 |
|    1070 | ml engineer            |
+---------+------------------------+
12 rows in set (0.00 sec)

mysql>