Alter Table electricity_access rename column `Number of people with access to electricity` to access_to_electricity;
Alter Table electricity_access rename column `Number of people without access to electricity` to without_access_to_electricity;
DELETE FROM electricity_access WHERE access_to_electricity = 0 AND without_access_to_electricity = 0;
SELECT * from electricity_access where Entity != 'World';

#Top 10 countries without access to electricity in the year 2019
SELECT Entity, without_access_to_electricity FROM new_schema.electricity_access where entity != 'World'and Year = 2019 
order by without_access_to_electricity desc limit 10;


