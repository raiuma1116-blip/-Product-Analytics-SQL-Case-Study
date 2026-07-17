CREATE DATABASE Product_Analytics_SQL;
USE Product_Analytics_SQL;

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE events (
    event_id INT PRIMARY KEY,
    user_id INT,
    event_type VARCHAR(20),
    event_date DATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE product_user (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2)
);

CREATE TABLE orders_user (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES product_user(product_id)
);

INSERT INTO product_user VALUES
(101,'Laptop','Electronics',60000),
(102,'Mouse','Electronics',800),
(103,'Keyboard','Electronics',1500),
(104,'Shoes','Fashion',3000),
(105,'Watch','Fashion',5000),
(106,'Book','Books',700),
(107,'Bag','Fashion',2500),
(108,'Phone','Electronics',40000);

INSERT INTO users VALUES
(1,'Alice','Delhi','2024-01-01'),
(2,'Bob','Mumbai','2024-01-02'),
(3,'Charlie','Delhi','2024-01-03'),
(4,'David','Pune','2024-01-05'),
(5,'Eva','Bangalore','2024-01-07'),
(6,'Frank','Mumbai','2024-01-10'),
(7,'Grace','Delhi','2024-01-12'),
(8,'Henry','Jaipur','2024-01-15'),
(9,'Isabella','Pune','2024-01-18'),
(10,'Jack','Bangalore','2024-01-22'),

(11,'Kevin','Delhi','2024-02-02'),
(12,'Sophia','Mumbai','2024-02-05'),
(13,'Liam','Delhi','2024-02-08'),
(14,'Emma','Bangalore','2024-02-10'),
(15,'Noah','Pune','2024-02-13'),
(16,'Olivia','Delhi','2024-02-18'),
(17,'James','Mumbai','2024-02-22'),
(18,'Ava','Jaipur','2024-02-27'),

(19,'Benjamin','Delhi','2024-03-02'),
(20,'Mia','Mumbai','2024-03-05'),
(21,'Lucas','Bangalore','2024-03-08'),
(22,'Charlotte','Delhi','2024-03-12'),
(23,'William','Pune','2024-03-15'),
(24,'Amelia','Mumbai','2024-03-20'),
(25,'Henry','Delhi','2024-03-24'),
(26,'Harper','Bangalore','2024-03-29'),

(27,'Alexander','Delhi','2024-04-02'),
(28,'Ella','Mumbai','2024-04-06'),
(29,'Daniel','Pune','2024-04-09'),
(30,'Scarlett','Delhi','2024-04-12'),
(31,'Matthew','Bangalore','2024-04-16'),
(32,'Emily','Mumbai','2024-04-20'),
(33,'Joseph','Delhi','2024-04-24'),
(34,'Abigail','Jaipur','2024-04-28'),

(35,'Samuel','Delhi','2024-05-03'),
(36,'Sofia','Mumbai','2024-05-06'),
(37,'Michael','Bangalore','2024-05-09'),
(38,'Victoria','Delhi','2024-05-13'),
(39,'David','Pune','2024-05-17'),
(40,'Luna','Mumbai','2024-05-20'),
(41,'Owen','Delhi','2024-05-24'),
(42,'Chloe','Bangalore','2024-05-28'),

(43,'Sebastian','Delhi','2024-06-02'),
(44,'Aria','Mumbai','2024-06-05'),
(45,'Logan','Pune','2024-06-08'),
(46,'Zoe','Delhi','2024-06-12'),
(47,'Aiden','Bangalore','2024-06-16'),
(48,'Nora','Mumbai','2024-06-20'),
(49,'Leo','Delhi','2024-06-24'),
(50,'Lily','Jaipur','2024-06-28');

INSERT INTO events VALUES
(1,1,'Login','2024-01-02'),
(2,1,'Purchase','2024-01-04'),
(3,1,'Login','2024-01-08'),
(4,1,'Purchase','2024-01-18'),
(5,1,'Login','2024-02-05'),
(6,1,'Purchase','2024-03-10'),

(7,2,'Login','2024-01-03'),
(8,2,'Purchase','2024-01-07'),
(9,2,'Login','2024-01-20'),
(10,2,'Purchase','2024-02-15'),

(11,3,'Login','2024-01-04'),
(12,3,'Purchase','2024-01-09'),
(13,3,'Login','2024-01-25'),
(14,3,'Purchase','2024-02-20'),
(15,3,'Login','2024-03-12'),

(16,4,'Login','2024-01-06'),
(17,4,'Purchase','2024-01-15'),
(18,4,'Login','2024-02-08'),

(19,5,'Login','2024-01-08'),
(20,5,'Purchase','2024-01-16'),
(21,5,'Login','2024-02-04'),
(22,5,'Purchase','2024-02-25'),
(23,5,'Login','2024-03-18'),

(24,6,'Login','2024-01-11'),
(25,6,'Purchase','2024-01-20'),
(26,6,'Login','2024-02-10'),
(27,6,'Purchase','2024-03-01'),
(28,6,'Login','2024-03-22'),

(29,7,'Login','2024-01-13'),
(30,7,'Purchase','2024-01-24'),
(31,7,'Login','2024-02-14'),
(32,7,'Purchase','2024-03-08'),

(33,8,'Login','2024-01-16'),
(34,8,'Purchase','2024-01-30'),
(35,8,'Login','2024-03-01'),

(36,9,'Login','2024-01-19'),
(37,9,'Purchase','2024-02-01'),
(38,9,'Login','2024-02-28'),
(39,9,'Purchase','2024-04-01'),

(40,10,'Login','2024-01-23'),
(41,10,'Purchase','2024-01-28'),
(42,10,'Login','2024-02-20'),
(43,10,'Purchase','2024-03-15'),

(44,11,'Login','2024-02-03'),
(45,11,'Purchase','2024-02-08'),
(46,11,'Login','2024-02-22'),
(47,11,'Purchase','2024-03-12'),
(48,11,'Login','2024-04-06'),

(49,12,'Login','2024-02-06'),
(50,12,'Login','2024-02-10'),
(51,12,'Purchase','2024-02-28'),
(52,12,'Login','2024-03-20'),

(53,13,'Login','2024-02-09'),
(54,13,'Purchase','2024-02-16'),
(55,13,'Login','2024-03-05'),
(56,13,'Purchase','2024-03-28'),
(57,13,'Login','2024-04-25'),

(58,14,'Login','2024-02-11'),

(59,15,'Login','2024-02-14'),
(60,15,'Login','2024-02-22'),
(61,15,'Purchase','2024-03-09'),

(62,16,'Login','2024-02-19'),
(63,16,'Purchase','2024-02-27'),
(64,16,'Login','2024-03-19'),
(65,16,'Purchase','2024-04-15'),

(66,17,'Login','2024-02-23'),
(67,17,'Purchase','2024-03-02'),
(68,17,'Login','2024-03-25'),

(69,18,'Login','2024-02-28'),
(70,18,'Purchase','2024-03-12'),
(71,18,'Login','2024-04-08'),

(72,19,'Login','2024-03-03'),
(73,19,'Purchase','2024-03-10'),
(74,19,'Login','2024-04-02'),
(75,19,'Purchase','2024-05-01'),

(76,20,'Login','2024-03-06'),
(77,20,'Purchase','2024-03-18'),
(78,20,'Login','2024-04-12'),
(79,20,'Purchase','2024-05-15'),
(80,20,'Login','2024-06-10');
INSERT INTO events VALUES
(171,1,'Login','2024-01-02'),
(172,3,'Login','2024-01-02'),
(173,5,'Login','2024-01-02'),

(174,6,'Login','2024-01-03'),
(175,9,'Login','2024-01-03'),

(176,10,'Login','2024-01-04'),
(177,12,'Login','2024-01-04'),
(178,13,'Login','2024-01-04'),

(179,14,'Login','2024-01-05'),
(180,17,'Login','2024-01-05'),

(181,18,'Login','2024-01-06'),
(182,20,'Login','2024-01-06');
INSERT INTO events VALUES

(81,21,'Login','2024-03-09'),
(82,21,'Purchase','2024-03-16'),
(83,21,'Login','2024-04-05'),
(84,21,'Purchase','2024-04-28'),
(85,21,'Login','2024-05-20'),

(86,22,'Login','2024-03-13'),
(87,22,'Purchase','2024-03-22'),
(88,22,'Login','2024-04-18'),
(89,22,'Purchase','2024-05-14'),

(90,23,'Login','2024-03-16'),
(91,23,'Purchase','2024-03-28'),
(92,23,'Login','2024-04-21'),

(93,24,'Login','2024-03-21'),
(94,24,'Login','2024-03-29'),
(95,24,'Purchase','2024-04-18'),

(96,25,'Login','2024-03-25'),
(97,25,'Purchase','2024-04-03'),
(98,25,'Login','2024-04-29'),
(99,25,'Purchase','2024-05-26'),

(100,26,'Login','2024-03-30'),
(101,26,'Purchase','2024-04-06'),
(102,26,'Login','2024-04-22'),
(103,26,'Purchase','2024-05-18'),
(104,26,'Login','2024-06-09'),

(105,27,'Login','2024-04-03'),
(106,27,'Purchase','2024-04-14'),
(107,27,'Login','2024-05-02'),

(108,28,'Login','2024-04-07'),
(109,28,'Purchase','2024-04-20'),
(110,28,'Login','2024-05-15'),
(111,28,'Purchase','2024-06-08'),

(112,29,'Login','2024-04-10'),
(113,29,'Login','2024-04-21'),
(114,29,'Purchase','2024-05-17'),

(115,30,'Login','2024-04-13'),
(116,30,'Purchase','2024-04-26'),
(117,30,'Login','2024-05-19'),

(118,31,'Login','2024-04-17'),
(119,31,'Purchase','2024-04-29'),
(120,31,'Login','2024-05-27'),
(121,31,'Purchase','2024-06-20'),

(122,32,'Login','2024-04-21'),
(123,32,'Purchase','2024-05-05'),
(124,32,'Login','2024-06-01'),

(125,33,'Login','2024-04-25'),
(126,33,'Purchase','2024-05-09'),
(127,33,'Login','2024-05-31'),
(128,33,'Purchase','2024-06-25'),

(129,34,'Login','2024-04-29'),

(130,35,'Login','2024-05-04'),
(131,35,'Login','2024-05-16'),
(132,35,'Purchase','2024-06-02'),

(133,36,'Login','2024-05-07'),
(134,36,'Purchase','2024-05-18'),
(135,36,'Login','2024-06-14'),
(136,36,'Purchase','2024-07-08'),

(137,37,'Login','2024-05-10'),
(138,37,'Login','2024-05-24'),
(139,37,'Login','2024-06-15'),

(140,38,'Login','2024-05-14'),
(141,38,'Purchase','2024-05-27'),
(142,38,'Login','2024-06-22'),

(143,39,'Login','2024-05-18'),
(144,39,'Purchase','2024-06-01'),
(145,39,'Login','2024-06-29'),
(146,39,'Purchase','2024-07-20'),

(147,40,'Login','2024-05-21'),
(148,40,'Purchase','2024-06-05'),
(149,40,'Login','2024-06-27'),

(150,41,'Login','2024-05-25'),
(151,41,'Login','2024-06-06'),
(152,41,'Login','2024-06-26'),

(153,42,'Login','2024-05-29'),

(154,43,'Login','2024-06-03'),

(155,44,'Login','2024-06-06'),

(156,45,'Login','2024-06-09'),

(157,46,'Login','2024-06-13'),

(158,47,'Login','2024-06-17'),

(159,48,'Login','2024-06-21'),
(160,48,'Purchase','2024-06-30'),
(161,48,'Login','2024-10-15'),
(162,48,'Purchase','2024-10-28'),

(163,49,'Login','2024-06-25'),
(164,49,'Purchase','2024-07-06'),
(165,49,'Login','2024-11-08'),
(166,49,'Purchase','2024-11-20'),

(167,50,'Login','2024-06-29'),
(168,50,'Purchase','2024-07-12'),
(169,50,'Login','2024-11-30'),
(170,50,'Purchase','2024-12-18');

INSERT INTO orders_user VALUES
(1001,1,101,'2024-01-04',1),
(1002,1,102,'2024-01-18',2),
(1003,1,108,'2024-03-10',1),

(1004,2,104,'2024-01-07',1),
(1005,2,107,'2024-02-15',2),

(1006,3,108,'2024-01-09',1),
(1007,3,106,'2024-02-20',3),

(1008,4,101,'2024-01-15',1),

(1009,5,105,'2024-01-16',1),
(1010,5,102,'2024-02-25',2),

(1011,6,101,'2024-01-20',1),
(1012,6,103,'2024-03-01',2),

(1013,7,104,'2024-01-24',1),
(1014,7,107,'2024-03-08',1),

(1015,8,106,'2024-01-30',2),

(1016,9,107,'2024-02-01',1),
(1017,9,105,'2024-04-01',1),

(1018,10,108,'2024-01-28',1),
(1019,10,102,'2024-03-15',3),

(1020,11,101,'2024-02-08',1),
(1021,11,102,'2024-03-12',2),

(1022,12,104,'2024-02-28',1),

(1023,13,108,'2024-02-16',1),
(1024,13,103,'2024-03-28',2),

(1025,15,106,'2024-03-09',3),

(1026,16,101,'2024-02-27',1),
(1027,16,102,'2024-04-15',2),

(1028,17,104,'2024-03-02',1),

(1029,18,105,'2024-03-12',1),

(1030,19,108,'2024-03-10',1),
(1031,19,102,'2024-05-01',2),

(1032,20,101,'2024-03-18',1),
(1033,20,103,'2024-05-15',2),

(1034,21,108,'2024-03-16',1),
(1035,21,102,'2024-04-28',2),

(1036,22,105,'2024-03-22',1),
(1037,22,106,'2024-05-14',2),

(1038,23,107,'2024-03-28',2),

(1039,24,103,'2024-04-18',1),

(1040,25,101,'2024-04-03',1),
(1041,25,102,'2024-05-26',2),

(1042,26,108,'2024-04-06',1),
(1043,26,101,'2024-05-18',1),

(1044,27,104,'2024-04-14',1),

(1045,28,105,'2024-04-20',1),
(1046,28,107,'2024-06-08',2),

(1047,29,106,'2024-05-17',3),

(1048,30,108,'2024-04-26',1),

(1049,31,101,'2024-04-29',1),
(1050,31,102,'2024-06-20',2),

(1051,32,107,'2024-05-05',1),

(1052,33,101,'2024-05-09',1),
(1053,33,103,'2024-06-25',2),

(1054,35,104,'2024-06-02',1),

(1055,36,105,'2024-05-18',1),
(1056,36,108,'2024-07-08',1),

(1057,38,107,'2024-05-27',2),

(1058,39,106,'2024-06-01',3),
(1059,39,102,'2024-07-20',2),

(1060,40,108,'2024-06-05',1),

(1061,48,101,'2024-06-30',1),
(1062,48,108,'2024-10-28',1),

(1063,49,105,'2024-07-06',1),
(1064,49,102,'2024-11-20',2),

(1065,50,108,'2024-07-12',1),
(1066,50,101,'2024-12-18',1);

UPDATE users SET signup_date='2024-01-01' WHERE user_id IN (1,2,3,4,5);

UPDATE users SET signup_date='2024-01-02' WHERE user_id IN (6,7,8,9);

UPDATE users SET signup_date='2024-01-03' WHERE user_id IN (10,11,12,13);

UPDATE users SET signup_date='2024-01-04' WHERE user_id IN (14,15,16,17);

UPDATE users SET signup_date='2024-01-05' WHERE user_id IN (18,19,20);

UPDATE users SET signup_date='2024-02-01' WHERE user_id IN (21,22,23,24);

UPDATE users SET signup_date='2024-02-02' WHERE user_id IN (25,26,27,28);

UPDATE users SET signup_date='2024-02-03' WHERE user_id IN (29,30,31);

UPDATE users SET signup_date='2024-03-01' WHERE user_id IN (32,33,34);

UPDATE users SET signup_date='2024-03-02' WHERE user_id IN (35,36,37);

UPDATE users SET signup_date='2024-04-01' WHERE user_id IN (38,39,40);

UPDATE users SET signup_date='2024-04-02' WHERE user_id IN (41,42);

UPDATE users SET signup_date='2024-05-01' WHERE user_id IN (43,44);

UPDATE users SET signup_date='2024-05-02' WHERE user_id IN (45,46);

UPDATE users SET signup_date='2024-06-01' WHERE user_id IN (47,48,49,50);

-- 1. The Product team wants to monitor user engagement.

-- One of the most important KPIs is Daily Active Users (DAU).

-- A user is considered active if they performed at least one event on a given day.

SELECT DATE(EVENT_DATE) AS DTE , COUNT(DISTINCT USER_ID) AS DAU_VALUE
FROM EVENTS 
group by DATE(EVENT_DATE);

-- Question 2 — Monthly Active Users (MAU)

-- The CEO wants to compare monthly engagement instead of daily engagement

SELECT MONTH(EVENT_DATE) AS MNTH , COUNT(DISTINCT USER_ID) AS MAU
FROM EVENTS 
group by MONTH(EVENT_DATE);

-- Question 3 — Stickiness (DAU / MAU)

-- The Product Manager wants to know how "sticky" the app is.

WITH DAU_TABLE AS (
SELECT DATE(EVENT_DATE) AS DTE, MONTH(EVENT_DATE) AS MNTH , COUNT(DISTINCT USER_ID) AS DAU_VALUE
FROM EVENTS 
group by 1,2
),
MAU_TABLE AS (
SELECT MONTH(EVENT_DATE) AS MNTH , COUNT(DISTINCT USER_ID) AS MAU
FROM EVENTS 
group by MONTH(EVENT_DATE)
),
AVG_DAU AS (
SELECT MNTH , AVG(DAU_VALUE) AS AVG_DAU
FROM DAU_TABLE 
GROUP BY MNTH)
SELECT M.MNTH , A.AVG_DAU,M.MAU,(A.AVG_DAU/M.MAU)*100 AS STICKINESS 
FROM AVG_DAU A
JOIN MAU_TABLE M
ON M.MNTH = A.MNTH;

-- Question 4 — Day-1 Retention
-- Business Problem

-- The Growth team wants to know how many users came back exactly one day after signing up.

-- Task

-- For every signup date return:

-- signup_date
-- total_users
-- retained_users
-- retention_rate
-- Expected Output

-- | signup_date | total_users | retained_users | retention_rate |

WITH TOTAL_USERS AS (
SELECT SIGNUP_DATE , COUNT(USER_ID) AS TOTAL_USERS 
FROM USERS
GROUP BY SIGNUP_DATE),
RETAINED_USER AS (
SELECT U.SIGNUP_DATE , COUNT(DISTINCT E.USER_ID) AS RETAINED_USER
FROM events E 
inner JOIN USERS U 
ON E.USER_ID = U.USER_ID
WHERE U.SIGNUP_DATE +1 = E.EVENT_DATE
GROUP BY U.SIGNUP_DATE)
SELECT T.SIGNUP_DATE,T.TOTAL_USERS , R.RETAINED_USER , R.RETAINED_USER/T.TOTAL_USERS AS RETENTION_RATE
FROM TOTAL_USERS T 
left JOIN RETAINED_USER R 
ON T.SIGNUP_DATE = R.SIGNUP_DATE
GROUP BY T.SIGNUP_DATE
, r.retained_user;

-- Question 5 — Overall Retention
-- Business Problem

-- The Product Manager wants to know:

-- Out of all users who signed up, how many users came back at least once after signing up?

WITH TOTAL_USERS AS (
SELECT SIGNUP_DATE , COUNT(USER_ID) AS TOTAL_USERS 
FROM USERS
GROUP BY SIGNUP_DATE),
RETAINED_USER AS (
SELECT U.SIGNUP_DATE , COUNT(DISTINCT E.USER_ID) AS RETAINED_USER
FROM events E 
inner JOIN USERS U 
ON E.USER_ID = U.USER_ID

where  U.SIGNUP_DATE < E.EVENT_DATE
GROUP BY U.SIGNUP_DATE
)
SELECT T.SIGNUP_DATE,T.TOTAL_USERS , R.RETAINED_USER , concat(round((R.RETAINED_USER/T.TOTAL_USERS)*100,0),"%")AS RETENTION_RATE
FROM TOTAL_USERS T 
left JOIN RETAINED_USER R 
ON T.SIGNUP_DATE = R.SIGNUP_DATE
GROUP BY T.SIGNUP_DATE
, r.retained_user;

-- ======================================================== Cohort analysis 

with cohort_user as 
(
select user_id ,signup_date,
date_format(signup_date,"%Y-%m") as cohort_month
from users),
user_activity as (
select c.user_id , c.signup_date,c.cohort_month , timestampdiff(month,c.signup_date,e.event_date) as month_num
from cohort_user c 
join events e 
on e.user_id = c.user_id
where event_date >= signup_date),
cohort_retention as (
select cohort_month , month_num,
count(distinct user_id) as active_user
from user_activity
group by cohort_month, month_num),
total_user as(
select cohort_month , count(user_id) as total_user
from cohort_user
group by cohort_month )
select c.cohort_month , 
c.month_num,
t.total_user,
c.active_user,
round((c.active_user/t.total_user)*100,2) as retention_rate
from cohort_retention c 
join total_user t 
on c.cohort_month = t.cohort_month
order by c.cohort_month , 
c.month_num;

-- Question 7 — Churn Rate
-- Business Problem

-- The Product Manager wants to know:
-- Which users became inactive?
-- Assume
-- A user is churned if
-- they haven't logged in for
-- 30+ days after their last activity.

WITH LAST_ACT AS 
(SELECT USER_ID , MAX(EVENT_DATE) AS LAST_ACTIVITY
FROM EVENTS 
GROUP BY USER_ID),
GAP_DAYS AS (
SELECT USER_ID , LAST_ACTIVITY, datediff((SELECT MAX(EVENT_DATE) FROM EVENTS),LAST_ACTIVITY) AS GAP_DAY
FROM LAST_ACT
GROUP BY USER_ID,LAST_ACTIVITY,GAP_DAY)
SELECT *,CASE
WHEN GAP_DAY > 30 
THEN "CHURNED"
ELSE "NOT_CHURNED"
END  AS CHURN_STATUS FROM GAP_dAYS;

WITH LAST_ACT AS (
SELECT USER_ID , MAX(EVENT_DATE) AS LAST_ACTIVITY
FROM EVENTS 
GROUP BY USER_ID),
LAST_LOGIN AS (
SELECT MAX(EVENT_DATE) AS LAST_DATE
FROM EVENTS)
SELECT COUNT(*) AS TOTAL_USERS , 
SUM(CASE WHEN DATEDIFF(A.LAST_dATE,L.LAST_ACTIVITY) > 30 
THEN 1 
ELSE 0 
END ) AS TOTAL_CHURNED_USERS,
ROUND(SUM(CASE WHEN DATEDIFF(A.LAST_DATE,L.LAST_ACTIVITY)>30
THEN 1
ELSE 0 
END)*100/COUNT(*) ,2) AS CHURN_RATE
FROM LAST_ACT L 
CROSS JOIN LAST_LOGIN A;

-- Question 8 — Reactivated Users
-- Business Problem
-- Find users who
-- became inactive
-- for at least
-- 60 days
-- and then came back.

WITH REACTIVATED_USERS AS 
(
SELECT USER_ID , EVENT_DATE AS CURRENT_ACT , LAG(EVENT_DATE) OVER(PARTITION BY USER_ID ORDER BY EVENT_DATE) 
AS PREVIOUS_ACT
FROM EVENTS 
),
GAP_DAY AS (SELECT * , DATEDIFF(CURRENT_ACT,PREVIOUS_ACT) AS GAP_DAYS 
FROM REACTIVATED_USERS )
SELECT * FROM GAP_dAY 
WHERE GAP_DAYS >=60;

-- Question 9 — First Purchase Conversion Rate
-- Business Problem
-- Out of all users,
-- how many eventually
-- made
-- their first purchase?

WITH OPERATING AS
(
    SELECT
        COUNT(*) AS TOTAL_USERS,
        (
            SELECT COUNT(DISTINCT USER_ID)
            FROM ORDERS_USER
        ) AS PURCHASED_USERS
    FROM USERS
)

SELECT
    *,
    CONCAT(
        ROUND((PURCHASED_USERS / TOTAL_USERS) * 100, 2),
        '%'
    ) AS CONVERSION_RATE
FROM OPERATING;

-- Question 10 — Repeat Purchase Rate
-- Business Problem
-- Among purchasing customers,
-- how many purchased
-- more than once?

WITH REPEAT_BUYER AS 
(SELECT COUNT(DISTINCT USER_ID) AS PURCHASE_USERS , (SELECT COUNT(*) FROM (SELECT 
USER_ID FROM ORDERS_USER 
GROUP BY USER_ID
HAVING COUNT(USER_ID) > 1) T ) AS REPEAT_USERS
FROM ORDERS_USER)
SELECT *, ROUND(REPEAT_USERS/PURCHASE_USERS*100,2) AS REPEAT_PURCHASE_RATE
FROM 
REPEAT_BUYER;



-- Question 11 — Average Time to First Purchase
-- Business Problem
-- How many days
-- does it take
-- for a new useR
-- to make
-- their first purchase?

WITH FIRST_PURC AS (SELECT U.USER_ID , U.SIGNUP_DATE  AS LOGIN_DATE,MIN(ORDER_DATE) AS FIRST_PURCHASE
FROM USERS U 
JOIN ORDERS_USER O 
ON O.USER_ID = U.USER_ID 
GROUP BY USER_ID ,U.SIGNUP_DATE),
USER_NUM AS (
SELECT USER_ID , DATEDIFF(FIRST_PURCHASE , LOGIN_DATE) AS DAY_BTWEEN_FIRST_PURCHASE_AND_SIGNUP_DATE
FROM FIRST_PURC 
GROUP BY USER_ID)
SELECT AVG(DAY_BTWEEN_FIRST_PURCHASE_AND_SIGNUP_DATE) AS AVG_dAYS
FROM USER_NUM;


-- QUESTION 12 → REVENUE BY COHORT 
WITH COHORT_MONTH AS 
(SELECT USER_ID , monthname(SIGNUP_DATE) AS MONTH_NAME 
FROM USERS
GROUP BY USER_ID),
TOTAL_REVENUE AS (
SELECT U.MONTH_NAME AS MONTH_NAME , COUNT(U.USER_ID) AS TOTAL_USERS ,SUM(O.QUANTITY*P.PRICE) AS TOTAL_REVENUE
FROM PRODUCT_USER P 
JOIN ORDERS_USER O 
ON P.PRODUCT_ID = O.PRODUCT_ID
JOIN COHORT_MONTH U
ON U.USER_ID = O.USER_ID
GROUP BY MONTH_NAME)

SELECT * FROM TOTAL_REVENUE;

-- Question 13 — Monthly Active Paying Users (MAPU)
-- 🏢 Business Scenario
-- The Product Manager asks:
-- "How many unique users made at least one purchase every month?"

SELECT MONTHNAME(ORDER_DATE) AS MONTH_NAME, COUNT(DISTINCT USER_ID) AS PAYING_USERS
FROM ORDERS_USER
GROUP BY MONTH_NAME;

SELECT * FROM orders_user;

-- Question 14 – Customer Lifetime Value (LTV)
-- 🏢 Business Scenario
-- The Head of Growth asks:
-- "How mUch revenue does each customer generate over their entire lifetime with us?"

SELECT U.USER_ID AS USERS, SUM(O.QUANTITY*P.PRICE) AS CUSTOMER_LV
FROM USERS U 
JOIN ORDERS_USER O 
ON U.USER_ID = O.USER_ID
JOIN PRODUCT_USER P 
ON O.PRODUCT_ID = P.PRODUCT_ID 
GROUP BY U.USER_ID;

-- Question 15 — Top Customers by Revenue
-- 🏢 Business Scenario
-- The Head of Sales says:
-- "Show me our top 10 customers

WITH REVENUE AS (SELECT U.USER_ID AS USERS,U.USER_NAME AS USER, SUM(O.QUANTITY*P.PRICE) AS CUSTOMER_LIFETIME_VALUE
FROM USERS U 
JOIN ORDERS_USER O 
ON U.USER_ID = O.USER_ID
JOIN PRODUCT_USER P 
ON O.PRODUCT_ID = P.PRODUCT_ID 
GROUP BY U.USER_ID,U.USER_NAME),
RANK_NUM AS (
SELECT *, DENSE_RANK() OVER(ORDER BY CUSTOMER_LIFETIME_VALUE DESC) AS RANK_NUMBER
FROM REVENUE)
SELECT * FROM RANK_NUM
WHERE RANK_NUMBER <=10;

-- Question 16 — Revenue Contribution %
-- "Which customers contribute the most revenue?"

WITH REVENUE_BY_CUSTOMERS AS (SELECT U.USER_ID AS USERS, SUM(O.QUANTITY*P.PRICE) AS CUSTOMER_LV
FROM USERS U 
JOIN ORDERS_USER O 
ON U.USER_ID = O.USER_ID
JOIN PRODUCT_USER P 
ON O.PRODUCT_ID = P.PRODUCT_ID 
GROUP BY U.USER_ID),
TOTAL_REVENUE AS 
(SELECT SUM(O.QUANTITY*P.PRICE) AS TOTAL_REV
FROM ORDERS_USER O 
JOIN PRODUCT_USER P 
ON P.PRODUCT_ID = O.PRODUCT_ID)
SELECT R.USERS ,R.CUSTOMER_LV, ROUND(SUM(R.CUSTOMER_LV/T.TOTAL_REV)*100,2) AS CONTRIBUTION_PERCENT
FROM REVENUE_BY_CUSTOMERS R 
CROSS JOIN TOTAL_REVENUE T 
GROUP BY R.USERS
;

-- Question 17 — Purchase Frequency.
-- "How frequently do our customers purchase?"

WITH USER_DATA AS (
SELECT USER_ID , MIN(ORDER_DATE) AS FIRST_PURCHASE ,
MAX(ORDER_DATE) AS LAST_PURCHASE
FROM ORDERS_USER
GROUP BY USER_ID),
TOTAL_ORDERS AS 
(SELECT USER_ID , COUNT(*) AS TOTAL_ORDERS FROM 
ORDERS_USER
GROUP BY USER_ID)
SELECT U.USER_ID , T.TOTAL_ORDERS,U.FIRST_PURCHASE , U.LAST_PURCHASE ,
 DATEDIFF(U.LAST_PURCHASE , U.FIRST_PURCHASE) AS GAP_DAYS,
  CASE
        WHEN T.TOTAL_ORDERS = 1 THEN NULL
        ELSE ROUND(
            DATEDIFF(U.LAST_PURCHASE, U.FIRST_PURCHASE)
            / (T.TOTAL_ORDERS - 1),
            2
        )
    END AS PURCHASE_FREQUENCY_DAYS
FROM USER_DATA U 
JOIN TOTAL_ORDERS T 
ON T.USER_ID = U.USER_ID ;


-- QUESTION 18 — RFM ANALYSIS

-- "Can you segment our customers based on their purchasing behavior so that we know whom to target?"
-- They decide to use the RFM Model.

WITH LAST_PUR AS (
SELECT USER_ID, MAX(ORDER_DATE) LAST_USER_PURC
FROM ORDERS_USER
GROUP BY USER_ID ),
TOTAL_LAST_PUR AS (
SELECT MAX(ORDER_DATE)  LAST_PURCHASE FROM ORDERS_USER),
RECENCY AS (
SELECT * , DATEDIFF(T.LAST_PURCHASE,L.LAST_USER_PURC) AS RECENCY
FROM LAST_PUR L
CROSS JOIN TOTAL_LAST_PUR T),
USER_ORDERS AS (
SELECT USER_ID , COUNT(*) AS FREQUENCY FROM 
ORDERS_USER 
GROUP BY USER_ID),
MONETARY AS (
 SELECT
        O.USER_ID,
        SUM(O.QUANTITY * P.PRICE) AS MONETARY
    FROM ORDERS_USER O
    JOIN PRODUCT_USER P
        ON O.PRODUCT_ID = P.PRODUCT_ID
    GROUP BY O.USER_ID
),RFM AS (
SELECT
    R.USER_ID,
    R.RECENCY,
    U.FREQUENCY,
    M.MONETARY
FROM RECENCY R
JOIN USER_ORDERS U
    ON R.USER_ID = U.USER_ID
JOIN MONETARY M
    ON R.USER_ID = M.USER_ID
ORDER BY M.MONETARY DESC),


-- ==================================== RFM SEGMENTATION ===========================================================
RFM_SEGMENT AS
(
    SELECT *,
        CASE
            WHEN RECENCY <= 30
                 AND FREQUENCY >= 5
                 AND MONETARY >= 50000
            THEN 'Champion'

            WHEN RECENCY <= 60
                 AND FREQUENCY >= 3
            THEN 'Loyal'

            WHEN RECENCY > 120
                 AND FREQUENCY <= 2
            THEN 'At Risk'

            ELSE 'Regular'
        END AS CUSTOMER_SEGMENT
    FROM RFM
)
SELECT * FROM RFM_SEGMENT;
