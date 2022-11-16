create table IF NOT EXISTS countries(Country_ID int ,
Country_Name varchar(25),
Region_ID char(25)

);



insert into countries values(1,"ITA","Italy");
insert into countries values(2,"IND","India");
insert into countries values(3,"CHN","China");
insert into countries values(1,"ITA","Italy");
insert into countries values(1,"ITA","Italy");
insert into countries values(2,"IND","India");
insert into countries values(3,"CHN","China");

SELECT
     Country_ID, COUNT(Country_ID),
     Country_Name, COUNT(Country_Name),
     Region_ID, COUNT(Region_ID)
FROM 
     countries
GROUP BY
     Country_ID,
     Country_Name,
     Region_ID
HAVING 
     COUNT(Country_ID) > 1
     AND COUNT(Country_Name) > 1
     AND COUNT(Region_ID) > 1;