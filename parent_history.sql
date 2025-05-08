--create schema malnutrition ;
create table malnutrition.parent_medical_history_table(
parent_history_id VARCHAR(10) references malnutrition.parent_table(parent_id),
disease VARCHAR(100) not null,
date_of_check DATE not null,
);
insert into malnutrition.parent_medical_history_table(
parent_history_id,parent_id,disease,date_of_check)
values ('ph01','p01','malaria',2025-01-30),
('ph02','p02','dyspepsia',2025-02-10),
('ph03','p03','Tuberculosis',2025-01-02),
('ph04','p04','HIV/AIDS',2025-03-03),
('ph05','p05','pneumonia',2025-03-03),
('ph06','p06','typhus',2025-02-04),
('ph07','p07','arthritis',2025-02-05),
('ph08','p08','PTSD',2025-02-06),
('ph09','p09','none',2025-04-04),
('ph10','p01','Typhoid',2025-03-03),
('ph11','p10','none',2025-02-02),
('ph12','p11','Tuberculosis',2025-04-03),
('ph13','p12','pneumonia',2025-04-04),
('ph14','p13','malaria',2025-03-05),
('ph15','p14','dyspepsia',2025-04-05),
('ph16','p15','PTSD',2025-02-10);
