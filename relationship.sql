--create schema malnutrition ;
create table malnutrition.relationship_table(
relationship_id VARCHAR(10) primary key,
parent_id VARCHAR(100) references malnutrition.parent_table(parent_id),
parent_id VARCHAR(10) references malnutrition.child_details(parent_id),
relationship_type(30) not null 
);
insert into malnutrition.relationship_table(relationship_id,parent_id,child_id,relationship_type)
values ('r01','p01','c01','Father'),
('r02','p02','c01','Father'),
('r03','p03','c02','Father'),
('r04','p03','c03','Father'),
('r05','p04','c04','Father'),
('r06','p05','c05','Mother'),
('r07','p06','c06','Father'),
('r08','p07','c07','Father'),
('r09','p08','c08','Mother'),
('r10','p09','c09','Mother'),
('r11','p10','c10','Grand Mother'),
('r12','p11','c11','Grand Father'),
('r13','p12','c12','Father'),
('r14','p13','c13','Aunt'),
('r15','p14','c14','Father'),
('r16','p15','c15''Father');
SELECT COUNT(*)
FROM malnutrition.relationship_table
GROUP BY child_id
HAVING COUNT(parent_id) > 1;


