SELECT * FROM new_schema.renewable_share_energy;
#Cleaning Data with false and inconvenient values
alter table renewable_share_energy RENAME COLUMN World to Entity;
select * from renewable_share_energy where entity = 'World';
DELETE from renewable_share_energy where entity = 'World';
select * from renewable_share_energy where `Renewables (% equivalent primary energy)` > 99;
DELETE from renewable_share_energy where `Renewables (% equivalent primary energy)` > 99;
DELETE from renewable_share_energy where `Renewables (% equivalent primary energy)` > 99;
#maximum percentage share
Delete from renewable_share_energy where  `Renewables (% equivalent primary energy)`;
# General Queries
SELECT  `Year`, max(`Renewables (% equivalent primary energy)` ) from renewable_share_energy GROUP BY `Year`;
SELECT  `Year`, avg(`Renewables (% equivalent primary energy)` ) from renewable_share_energy GROUP BY `Year` order by `Year`;

#most perchentage shared in countries
select * from renewable_share_energy where entity != 'World' order by `Renewables (% equivalent primary energy)` desc; 
select * from renewable_share_energy where entity != 'World' and `Year` = 2019
order by  `Renewables (% equivalent primary energy)` desc LIMIT 10; 
#least percentage shared in countries
select * from renewable_share_energy where entity != 'World' and `Year` = 2019
order by  `Renewables (% equivalent primary energy)`  LIMIT 10; 
#Just for curiosity
select * from renewable_share_energy where entity = 'Bangladesh'; 


