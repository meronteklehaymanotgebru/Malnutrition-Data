 --create table malnutrition.parent_details(
--details_id VARCHAR(10) primary key,
--parent_id VARCHAR(10) references parent_table(parent_id),
--location VARCHAR(100),
--savings FLOAT,
--number_of_children INT
--);
--insert into malnutrition.parent_details(distribution_id,parent_id,location,savings,number_of_children)
--VALUES('pd01','p01','Kitisuru',5000.60,3),
--      ('pd02','p02','Kilimani',6000.50,4),
--      ('pd03','p03','Nairobi',5500.10,5),
--      ('pd04','p04','Kilimani',4500.01,6),
--      ('pd05','p05','Kilimani',4600.20,4),
--      ('pd06','p06','Kitisuru',4755.40,3),
--      ('pd07','p07','Kitisuru',4868.60,2),
--      ('pd08','p08','Kitisuru',6575.60,1),
--      ('pd09','p09','Kilimani',6075.70,4),
--      ('pd10','p10','Kitisuru',7802.45,5),
--      ('pd11','p11','Kitisuru',6223.70,3),
--      ('pd12','p12','Kilimani',6003.70,3),
--      ('pd13','p13','Kilimani',10,000.10,4),
--      ('pd14','p14','Kilimani',10,000.20,5),
--      ('pd15','p15','Kilimani',11,000.30,3);
--

--create table malnutrition.distribution_table(
--distribution_id VARCHAR(10) primary key,
--child_id VARCHAR(10) references child_details(child_id),
--food_id VARCHAR(10) references food_table(food_id),
--quanitity FLOAT check(quantity>0),
--location VARCHAR(100),
--distribution_date DATE
--);
--insert into malnutrition.distribution_table(distribution_id,child_id,food_id,quanitity,location,distribution_date)
--values('d01','c01','f01',96.5,'Kitisuru','2025-04-25'),
--      ('d02','c02','f02',95,'Kilimani','2025-04-20'),
--      ('d03','c03','f03',94.5,'Nairobi','2025-04-10'),
--      ('d04','c04','f04',90,'Kilimani','2025-03-10'),
--      ('d05','c05','f05',80,'Kilimani','2024-02-10'),
--      ('d06','c06','f06',80,'Kitisuru','2024-04-20'),
--      ('d07','c07','f07',75,'Kitisuru','2024-04-10'),
--      ('d08','c08','f08',70,'Kilimani','2025-04-10'),
--      ('d09','c09','f09',74,'Kilimani','2025-04-10'),
--      ('d10','c10','f10',72,'Kitisuru','2025-02-02'),
--      ('d11','c11','f11',73,'Kitisuru','2025-02-01'),
--      ('d12','c12','f12',70,'Kitisuru','2025-01-02'),
--      ('d13','c13','f13',69,'Kilimani','2025-01-01'),
--      ('d14','c14','f14',68,'Kilimani','2025-04-01'),
--      ('d15','c15','f15',67,'Kilimani','2025-04-03');
--        
--
create table malnutrition.food_table(
food_id VARCHAR(10) primary key,
child_id VARCHAR(10) references child_details(child_id),
food_item VARCHAR(10) references food_table(food_id),
expiry_date DATE,
nutritional_value VARCHAR(100),
meals_per_day Int
);
--insert into malnutrition.food_table(food_id,child_id,food_item,expiry_date,nutritional_value,meals_per_day)
--values('f01','c01','maize',2028-06-27,'carbohydrate',2),
--      ('f02','c02','rice',2027-03-25,'carbohydrate',1),
--      ('f03','c03','oil',2028-11-12,'fat',2),
--      ('f04','c04','flour',2026-01-12,'carbohydrate',2),
--      ('f05','c05','maize',2028-06-27,'fat',1),
--      ('f06','c06','oil',2028-11-12,'carbohydrate',2),
--      ('f07','c07','rice',2027-03-05,'carbohydrate',1),
--      ('f08','c08','flour',2026-01-12,'fat',2),
--      ('f09','c09','oil',2027-03-05,'fat',1),
--      ('f10','c10','flour',2026-01-12,'carbohydrate',2),
--      ('f11','c11','flour',2026-01-12,'carbohydrate',1),
--      ('f12','c12','rice',2027-03-05,'fat',2),
--      ('f13','c13','maize',2025-06-27,'fat',1),
--      ('f14','c14','rice',2027-03-05,'carbohydrate',1),
--      ('f15','c15','flour',2026-01-12,'fat',2);
--
--
--
--
--
