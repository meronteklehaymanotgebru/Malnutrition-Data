--create schema malnutrition ;
--create table malnutrition.parent_table(
--parent_id VARCHAR (10) primary key,
--name VARCHAR (25) not null,
--gender VARCHAR (6) not null,
--date_of_birth DATE not null,
--phone_number VARCHAR (20)
--);
insert into malnutrition.parent_table (
parent_id,name,gender,date_of_birth,phone_number
)
values('p01','Berhe Alemu','male','1970-08-22','+254 7794946'),
('p02','John Wanjala','male','1990-01-30','+254 732347577'),
('p03','Mamit Teka','male','1980-02-20','+254 7767218'),
('p04','Tekiu Asmelash','male','1960-11-18','+254 7766699'),
('p05','Melaku Tesena','female','1964-12-15','+254 74 84442'),
('p06','Asmelah Hagos','male','1965-06-25','+254 7680601'),
('p07','Kiros Birhe','male','1972-03-26','+254 702 033'),
('p08','Fana Abebe','female','1981-05-09','+254 7687278'),
('p09','Hewan Bekele','female','1969-09-06','+254 713 0171'),
('p10','Fiona Girmay','female','1955-12-11','+254 703 881'),
('p11','Setina Tesema','male','1950-12-17','+254 7131923'),
('p12','Abebe Bekila','male','1982-08-13','+254 713787'),
('p13','Almaz Tesfu','female','1980-01-18','+254 7231111'),
('p14','Bravin Gesh','male','1979-07-11','+254 7818181'),
('p15','Jabal Simiyu','male','1960-02-20','+254 7030405');

SELECT COUNT(*)
FROM malnutrition.parent_table
WHERE first_name LIKE 'K%' OR last_name LIKE 'K%';







