SELECT * FROM new_schema.renewable_energy_consumption;
select * from renewable_energy_consumption where entity = 'World';
#General Queries 
select `Year`, avg(`Geo Biomass Other - TWh`) from renewable_energy_consumption group by `Year` order by `Year` desc;
select Entity, `Geo Biomass Other - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Geo Biomass Other - TWh` ;
select Entity, `Geo Biomass Other - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Geo Biomass Other - TWh` desc;
select count(Entity) from renewable_energy_consumption WHERE `Geo Biomass Other - TWh` = 0 and year = 2019;

select `Year`, avg(`Solar Generation - TWh`) from renewable_energy_consumption group by `Year` order by `Year` desc;
select Entity, `Solar Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Solar Generation - TWh` ;
select Entity, `Solar Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Solar Generation - TWh` desc;
select count(Entity) from renewable_energy_consumption WHERE `Solar Generation - TWh` = 0 and year = 2019;

select `Year`, avg(`Wind Generation - TWh`) from renewable_energy_consumption group by `Year` order by `Year` desc;
select Entity, `Wind Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Wind Generation - TWh` ;
select Entity, `Wind Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Wind Generation - TWh` desc;
select Entity from renewable_energy_consumption WHERE `Wind Generation - TWh` = 0 and year = 2019;

select `Year`, avg(`Hydro Generation - TWh`) from renewable_energy_consumption group by `Year` order by `Year` desc;
select Entity, `Hydro Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Hydro Generation - TWh` ;
select Entity, `Hydro Generation - TWh` from renewable_energy_consumption where year = 2019 ORDER BY  `Hydro Generation - TWh` desc;
select count(Entity) from renewable_energy_consumption WHERE `Hydro Generation - TWh` = 0 and year = 2019;

#Total consumption by year
select  `Year`, sum(`Geo Biomass Other - TWh` + `Solar Generation - TWh`+ `Wind Generation - TWh` + `Hydro Generation - TWh`) 
as total_renewable_energy_consumption from renewable_energy_consumption
group by `Year` order by `Year`;