
Fiona Wesonga
  11:04 AM
create table malnutrition.parent_details(
details_id VARCHAR(10) primary key,
parent_id VARCHAR(10) references parent_table(parent_id),
location VARCHAR(100),
savings FLOAT,
number_of_children INT
);
insert into malnutrition.parent_details(distribution_id,parent_id,location,savings,number_of_children)
VALUES('pd01','p01','Kitisuru',5000.60,3),
      ('pd02','p02','Kilimani',6000.50,4),
      ('pd03','p03','Nairobi',5500.10,5),
      ('pd04','p04','Kilimani',4500.01,6),
      ('pd05','p05','Kilimani',4600.20,4),
      ('pd06','p06','Kitisuru',4755.40,3),
      ('pd07','p07','Kitisuru',4868.60,2),
      ('pd08','p08','Kitisuru',6575.60,1),
      ('pd09','p09','Kilimani',6075.70,4),
      ('pd10','p10','Kitisuru',7802.45,5),
      ('pd11','p11','Kitisuru',6223.70,3),
      ('pd12','p12','Kilimani',6003.70,3),
      ('pd13','p13','Kilimani',10,000.10,4),
      ('pd14','p14','Kilimani',10,000.20,5),
      ('pd15','p15','Kilimani',11,000.30,3);
create table malnutrition.food_table(
food_id VARCHAR(10) primary key,
child_id VARCHAR(10) references child_details(child_id),
food_item VARCHAR(10) references food_table(food_id),
expiry_date DATE,
nutritional_value VARCHAR(100),
meals_per_day DATE
);
insert into malnutrition.distribution_table(distribution_id,child_id,food_id,quanitity,location,distribution_date)
values('f01','c01','maize',2028-06-27,'carbohydrate',2),
      ('f02','c02','rice',2027-03-25,'carbohydrate',1),
      ('f03','c03','oil',2028-11-12,'fat',2),
      ('f04','c04','flour',2026-01-12,'carbohydrate',2),
      ('f05','c05','maize',2028-06-27,'fat',1),
      ('f06','c06','oil',2028-11-12,'carbohydrate',2),
      ('f07','c07','rice',2027-03-05,'carbohydrate',1),
      ('f08','c08','flour',2026-01-12,'fat',2),
      ('f09','c09','oil',2027-03-05,'fat',1),
      ('f10','c10','flour',2026-01-12,'carbohydrate',2),
      ('f11','c11','flour',2026-01-12,'carbohydrate',1),
      ('f12','c12','rice',2027-03-05,'fat',2),
      ('f13','c13','maize',2025-06-27,'fat',1),
      ('f14','c14','rice',2027-03-05,'carbohydrate',1),
      ('f15','c15','flour',2026-01-12,'fat',2);
 SELECT COUNT(DISTINCT child_id) AS children_multiple_meals
FROM (
    SELECT child_id, meals_per_day
    FROM food_table
    GROUP BY child_id, meals_per_day
    HAVING COUNT((food_id)) > 1
) sub;
