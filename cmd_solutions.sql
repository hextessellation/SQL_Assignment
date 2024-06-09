mysql> CREATE DATABASE ORG1;
SHOW DATABASES;
USE ORG1;
CREATE TABLE Worker (
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
DEPARTMENT) VALUES
(001, 'Monika', 'Arora', 100000, '14-02-20
09.00.00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11
09.00.00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20
09.00.00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20
09.00.00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11
09.00.00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11
09.00.00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20
09.00.00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11
09.00.00', 'Admin');
CREATE TABLE Bonus (
WORKER_REF_ID INT,
BONUS_AMOUNT INT(10),
BONUS_DATE DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);
INSERT INTO Bonus
(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000, '16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');
CREATE TABLE Title (
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
FOREIGN KEY (WORKER_REF_ID)
REFERENCES Worker(WORKER_ID)
ON DELETE CASCADE
);
INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
(001, 'Manager', '2016-02-20 00:00:00'),
(002, 'Executive', '2016-06-11 00:00:00'),
(008, 'Executive', '2016-06-11 00:00:00'),
(005, 'Manager', '2016-06-11 00:00:00'),
(004, 'Asst. Manager', '2016-06-11 00:00:00'),
(007, 'Executive', '2016-06-11 00:00:00'),
(006, 'Lead', '2016-06-11 00:00:00'),
(003, 'Lead', '2016-06-11 00:00:00');

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| ORG1               |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE ORG1;
Database changed
mysql> CREATE TABLE Worker (
    -> WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> FIRST_NAME CHAR(25),
    -> LAST_NAME CHAR(25),
    -> SALARY INT(15),
    -> JOINING_DATE DATETIME,
    -> DEPARTMENT CHAR(25)
    -> );
Query OK, 0 rows affected, 1 warning (0.09 sec)

mysql> INSERT INTO Worker
    -> (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE,
    -> DEPARTMENT) VALUES
    -> (001, 'Monika', 'Arora', 100000, '14-02-20
    '> 09.00.00', 'HR'),
    -> (002, 'Niharika', 'Verma', 80000, '14-06-11
    '> 09.00.00', 'Admin'),
    -> (003, 'Vishal', 'Singhal', 300000, '14-02-20
    '> 09.00.00', 'HR'),
    -> (004, 'Amitabh', 'Singh', 500000, '14-02-20
    '> 09.00.00', 'Admin'),
    -> (005, 'Vivek', 'Bhati', 500000, '14-06-11
    '> 09.00.00', 'Admin'),
    -> (006, 'Vipul', 'Diwan', 200000, '14-06-11
    '> 09.00.00', 'Account'),
    -> (007, 'Satish', 'Kumar', 75000, '14-01-20
    '> 09.00.00', 'Account'),
    -> (008, 'Geetika', 'Chauhan', 90000, '14-04-11
    '> 09.00.00', 'Admin');
Query OK, 8 rows affected, 8 warnings (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 8

mysql> CREATE TABLE Bonus (
    -> WORKER_REF_ID INT,
    -> BONUS_AMOUNT INT(10),
    -> BONUS_DATE DATETIME,
    -> FOREIGN KEY (WORKER_REF_ID)
    -> REFERENCES Worker(WORKER_ID)
    -> ON DELETE CASCADE
    -> );
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> INSERT INTO Bonus
    -> (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
    -> (001, 5000, '16-02-20'),
    -> (002, 3000, '16-06-11'),
    -> (003, 4000, '16-02-20'),
    -> (001, 4500, '16-02-20'),
    -> (002, 3500, '16-06-11');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE Title (
    -> WORKER_REF_ID INT,
    -> WORKER_TITLE CHAR(25),
    -> AFFECTED_FROM DATETIME,
    -> FOREIGN KEY (WORKER_REF_ID)
    -> REFERENCES Worker(WORKER_ID)
    -> ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO Title
    -> (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    -> (001, 'Manager', '2016-02-20 00:00:00'),
    -> (002, 'Executive', '2016-06-11 00:00:00'),
    -> (008, 'Executive', '2016-06-11 00:00:00'),
    -> (005, 'Manager', '2016-06-11 00:00:00'),
    -> (004, 'Asst. Manager', '2016-06-11 00:00:00'),
    -> (007, 'Executive', '2016-06-11 00:00:00'),
    -> (006, 'Lead', '2016-06-11 00:00:00'),
    -> (003, 'Lead', '2016-06-11 00:00:00');
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0



Solution queries:


1.
mysql> SELECT FIRST_NAME AS WORKER_NAME FROM Worker;
+-------------+
| WORKER_NAME |
+-------------+
| Monika      |
| Niharika    |
| Vishal      |
| Amitabh     |
| Vivek       |
| Vipul       |
| Satish      |
| Geetika     |
+-------------+
8 rows in set (0.01 sec)
2.
mysql> SELECT UPPER(FIRST_NAME) AS WORKER_NAME FROM Worker;
+-------------+
| WORKER_NAME |
+-------------+
| MONIKA      |
| NIHARIKA    |
| VISHAL      |
| AMITABH     |
| VIVEK       |
| VIPUL       |
| SATISH      |
| GEETIKA     |
+-------------+
8 rows in set (0.00 sec)
3.
mysql> SELECT DISTINCT department FROM Worker;
+------------+
| department |
+------------+
| HR         |
| Admin      |
| Account    |
+------------+
3 rows in set (0.04 sec)
4.
mysql> select left(first_name,3) AS first_3_characters from Worker;
+--------------------+
| first_3_characters |
+--------------------+
| Mon                |
| Nih                |
| Vis                |
| Ami                |
| Viv                |
| Vip                |
| Sat                |
| Gee                |
+--------------------+
8 rows in set (0.05 sec)
5.
mysql>  SELECT LOCATE('a', FIRST_NAME) AS Position FROM Worker WHERE FIRST_NAME = 'Amitabh';
+----------+
| Position |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)
6.
mysql> select rtrim(first_name) as TRIM from Worker;
+----------+
| TRIM     |
+----------+
| Monika   |
| Niharika |
| Vishal   |
| Amitabh  |
| Vivek    |
| Vipul    |
| Satish   |
| Geetika  |
+----------+
8 rows in set (0.04 sec)
7.
mysql> select ltrim(first_name) as TRIM from Worker;
+----------+
| TRIM     |
+----------+
| Monika   |
| Niharika |
| Vishal   |
| Amitabh  |
| Vivek    |
| Vipul    |
| Satish   |
| Geetika  |
+----------+
8 rows in set (0.00 sec)
8.
mysql> select distinct department, length(department) as Dept_Length from Worker;
+------------+-------------+
| department | Dept_Length |
+------------+-------------+
| HR         |           2 |
| Admin      |           5 |
| Account    |           7 |
+------------+-------------+
3 rows in set (0.00 sec)
9.
mysql> select replace (first_name, 'a','A') as First_Name from Worker;
+------------+
| First_Name |
+------------+
| MonikA     |
| NihArikA   |
| VishAl     |
| AmitAbh    |
| Vivek      |
| Vipul      |
| SAtish     |
| GeetikA    |
+------------+
8 rows in set (0.03 sec)
10.
mysql> SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME FROM Worker;
+-----------------+
| COMPLETE_NAME   |
+-----------------+
| Monika Arora    |
| Niharika Verma  |
| Vishal Singhal  |
| Amitabh Singh   |
| Vivek Bhati     |
| Vipul Diwan     |
| Satish Kumar    |
| Geetika Chauhan |
+-----------------+
8 rows in set (0.02 sec)
11.
mysql> select * from Worker order by first_name asc;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.00 sec)
12.
mysql> select * from Worker order by first_name asc, department desc;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.00 sec)
13.
mysql> SELECT * FROM Worker WHERE FIRST_NAME IN ('Vipul', 'Satish');
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.00 sec)
14.
mysql> SELECT * FROM Worker WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
6 rows in set (0.03 sec)
15.
mysql> SELECT * FROM Worker WHERE DEPARTMENT = 'Admin';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)
16.
mysql> SELECT * FROM Worker WHERE FIRST_NAME LIKE '%a%';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
6 rows in set (0.03 sec)
17.
mysql> SELECT * FROM Worker WHERE FIRST_NAME LIKE '%a';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.00 sec)
18.
mysql> SELECT * FROM Worker WHERE FIRST_NAME LIKE '%h' AND LENGTH(FIRST_NAME) = 6;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
1 row in set (0.01 sec)
19.
mysql> SELECT * FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
5 rows in set (0.03 sec)
20.
mysql> SELECT * FROM Worker WHERE MONTH(JOINING_DATE) = 2 AND YEAR(JOINING_DATE) = 2014;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.00 sec)
21.
mysql> SELECT COUNT(*) AS Number_of_Employees FROM Worker WHERE DEPARTMENT = 'Admin';
+---------------------+
| Number_of_Employees |
+---------------------+
|                   4 |
+---------------------+
1 row in set (0.06 sec)
22.
mysql> SELECT FIRST_NAME, LAST_NAME FROM Worker WHERE SALARY BETWEEN 50000 AND 100000;
+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Monika     | Arora     |
| Niharika   | Verma     |
| Satish     | Kumar     |
| Geetika    | Chauhan   |
+------------+-----------+
4 rows in set (0.01 sec)
23.
mysql> SELECT DEPARTMENT, COUNT(*) AS Number_of_Workers
    -> FROM Worker
    -> GROUP BY DEPARTMENT
    -> ORDER BY Number_of_Workers DESC;
+------------+-------------------+
| DEPARTMENT | Number_of_Workers |
+------------+-------------------+
| Admin      |                 4 |
| HR         |                 2 |
| Account    |                 2 |
+------------+-------------------+
3 rows in set (0.03 sec)
24.
mysql> SELECT W.FIRST_NAME, W.LAST_NAME
    -> FROM Worker W
    -> INNER JOIN Title T ON W.WORKER_ID = T.WORKER_REF_ID
    -> WHERE T.WORKER_TITLE = 'Manager';
+------------+-----------+
| FIRST_NAME | LAST_NAME |
+------------+-----------+
| Monika     | Arora     |
| Vivek      | Bhati     |
| Monika     | Arora     |
| Vivek      | Bhati     |
| Monika     | Arora     |
| Vivek      | Bhati     |
| Monika     | Arora     |
| Vivek      | Bhati     |
+------------+-----------+
8 rows in set (0.00 sec)
25.
mysql> SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY, COUNT(*) AS Duplicate_Count
    -> FROM Worker
    -> GROUP BY FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY
    -> HAVING COUNT(*) > 1;
Empty set (0.00 sec)
26.
mysql> SELECT * FROM Worker WHERE WORKER_ID % 2 <> 0;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)
27.
mysql> SELECT * FROM Worker WHERE WORKER_ID % 2 = 0;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)
28.
mysql> CREATE TABLE new_worker LIKE Worker;
Query OK, 0 rows affected (0.14 sec)
mysql> INSERT INTO new_worker SELECT * from Worker;
Query OK, 8 rows affected (0.06 sec)
Records: 8  Duplicates: 0  Warnings: 0
29.
mysql> SELECT distinct WORKER_REF_ID from Bonus intersect select WORKER_REF_ID from Title;
+---------------+
| WORKER_REF_ID |
+---------------+
|             1 |
|             2 |
|             3 |
+---------------+
3 rows in set (0.04 sec)
30.
mysql> Select DISTINCT * FROM Title WHERE (WORKER_REF_ID NOT IN(SELECT WORKER_REF_ID FROM Bonus));
+---------------+---------------+---------------------+
| WORKER_REF_ID | WORKER_TITLE  | AFFECTED_FROM       |
+---------------+---------------+---------------------+
|             8 | Executive     | 2016-06-11 00:00:00 |
|             5 | Manager       | 2016-06-11 00:00:00 |
|             4 | Asst. Manager | 2016-06-11 00:00:00 |
|             7 | Executive     | 2016-06-11 00:00:00 |
|             6 | Lead          | 2016-06-11 00:00:00 |
+---------------+---------------+---------------------+
5 rows in set (0.00 sec)
31.
mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2024-06-09 13:43:27 |
+---------------------+
1 row in set (0.00 sec)
32.
mysql> SELECT * FROM Worker LIMIT 6;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
6 rows in set (0.00 sec)
33.
mysql> SELECT Salary FROM Worker ORDER BY Salary DESC LIMIT 1 OFFSET 4;
+--------+
| Salary |
+--------+
| 100000 |
+--------+
1 row in set (0.00 sec)
34.
mysql> SELECT salary FROM (SELECT salary,ROW_NUMBER() OVER (ORDER BY salary DESC) AS rn FROM Worker) AS ranked WHERE rn = 5;
+--------+
| salary |
+--------+
| 100000 |
+--------+
35.
mysql> SELECT DISTINCT w1.* FROM Worker w1 JOIN Worker w2 ON w1.salary = w2.salary AND w1.worker_id <> w2.worker_id;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.00 sec)
36.
mysql> SELECT DISTINCT salary FROM Worker ORDER BY salary DESC LIMIT 1 OFFSET 1;
+--------+
| salary |
+--------+
| 300000 |
+--------+
1 row in set (0.00 sec)
37.
mysql> SELECT DISTINCT Bonus.WORKER_REF_ID AS Bonus_ID, Title.WORKER_REF_ID AS Title_ID FROM Bonus INNER JOIN Title ON Bonus.WORKER_REF_ID = Title.WORKER_REF_ID;
+----------+----------+
| Bonus_ID | Title_ID |
+----------+----------+
|        1 |        1 |
|        2 |        2 |
|        3 |        3 |
+----------+----------+
3 rows in set (0.00 sec)
38.
mysql> SELECT count(*) FROM Worker;
+----------+
| count(*) |
+----------+
|        8 |
+----------+
1 row in set (0.00 sec)
39.
mysql> SELECT * FROM Worker ORDER BY WORKER_ID LIMIT 4;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)
40.
mysql> SELECT Department FROM Worker GROUP BY Department HAVING count(*) < 5;
+------------+
| Department |
+------------+
| HR         |
| Admin      |
| Account    |
+------------+
3 rows in set (0.01 sec)
41.
mysql> SELECT Department, COUNT(*) AS Count FROM Worker GROUP BY Department;
+------------+-------+
| Department | Count |
+------------+-------+
| HR         |     2 |
| Admin      |     4 |
| Account    |     2 |
+------------+-------+
3 rows in set (0.00 sec)
42.
mysql> SELECT * FROM Worker ORDER BY WORKER_ID DESC LIMIT 1;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
1 row in set (0.00 sec)
43.
mysql> SELECT * FROM Worker ORDER BY WORKER_ID LIMIT 1;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+
1 row in set (0.00 sec)
44.
mysql> SELECT * FROM Worker ORDER BY WORKER_ID desc LIMIT 5;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
5 rows in set (0.00 sec)
45.
mysql> SELECT FIRST_NAME, LAST_NAME, Department, Salary FROM Worker
    -> WHERE (Department,Salary) in (
    -> SELECT Department,MAX(Salary) FROM Worker GROUP BY Department);
+------------+-----------+------------+--------+
| FIRST_NAME | LAST_NAME | Department | Salary |
+------------+-----------+------------+--------+
| Vishal     | Singhal   | HR         | 300000 |
| Amitabh    | Singh     | Admin      | 500000 |
| Vivek      | Bhati     | Admin      | 500000 |
| Vipul      | Diwan     | Account    | 200000 |
+------------+-----------+------------+--------+
4 rows in set (0.00 sec)
46.
mysql> SELECT * FROM Worker ORDER BY Salary DESC LIMIT 3;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.00 sec)
47.
mysql> SELECT * FROM Worker ORDER BY Salary LIMIT 3;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         7 | Satish     | Kumar     |  75000 | 2014-01-20 09:00:00 | Account    |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | Admin      |
|         8 | Geetika    | Chauhan   |  90000 | 2014-04-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
3 rows in set (0.01 sec)
48.
mysql> SELECT * FROM Worker ORDER BY Salary DESC LIMIT 4; --N=4
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | FIRST_NAME | LAST_NAME | SALARY | JOINING_DATE        | DEPARTMENT |
+-----------+------------+-----------+--------+---------------------+------------+
|         4 | Amitabh    | Singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     | 500000 | 2014-06-11 09:00:00 | Admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         6 | Vipul      | Diwan     | 200000 | 2014-06-11 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.01 sec)
49.
mysql> Select Department, SUM(Salary) AS Total_Salary FROM Worker GROUP BY Department;
+------------+--------------+
| Department | Total_Salary |
+------------+--------------+
| HR         |       400000 |
| Admin      |      1170000 |
| Account    |       275000 |
+------------+--------------+
3 rows in set (0.00 sec)
50.
mysql> SELECT FIRST_NAME, LAST_NAME, Salary FROM Worker WHERE Salary = (SELECT MAX(Salary) FROM Worker);
+------------+-----------+--------+
| FIRST_NAME | LAST_NAME | Salary |
+------------+-----------+--------+
| Amitabh    | Singh     | 500000 |
| Vivek      | Bhati     | 500000 |
+------------+-----------+--------+
2 rows in set (0.00 sec)
