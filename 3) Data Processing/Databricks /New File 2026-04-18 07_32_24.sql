Select RACE,
       Province,     
       count(UserID) AS numbers_of_viewers,
       IFNULL(GENDER,'NON_BINARY') AS GENDER                
From bright_tv_data_2,
     `1774379196223_bright_tv_dataset`
Group by Gender,
         Race,
         Province
ORDER BY numbers_of_viewers DESC;

Select Age,
       cast(RecordDate2 as Date),          
       CASE 
           WHEN Age BETWEEN 0 AND 14 THEN 'MINOR' 
           WHEN Age BETWEEN 15 AND 34 THEN 'YOUTH' 
           WHEN Age BETWEEN 35 AND 54 THEN 'ADULT' 
           ELSE 'PENSIONER'
       END AS AGE_CATERGORIES
FROM bright_tv_data_2,
     `1774379196223_bright_tv_dataset`
GROUP by  Age,
          RecordDate2;

SELECT Age,
       date_format(RecordDate2,'HH:mm:ss') AS VIEWER_TIMES,
       from_utc_timestamp(RecordDate2, 'Africa/Johannesburg') AS sa_time,
       `Duration 2`,        
       CASE 
           WHEN Age BETWEEN 0 AND 14 THEN 'MINOR' 
           WHEN Age BETWEEN 15 AND 34 THEN 'YOUTH' 
           WHEN Age BETWEEN 35 AND 54 THEN 'ADULT' 
           ELSE 'PENSIONER'
       END AS AGE_CATERGORIES
FROM bright_tv_data_2,
     `1774379196223_bright_tv_dataset`
GROUP by  Age,
          RecordDate2,
          `Duration 2`;

Select 
      date_format(RecordDate2,'HH:mm:ss') AS VIEWER_TIMES
FROM bright_tv_data_2,
     `1774379196223_bright_tv_dataset`;

SELECT from_utc_timestamp(RecordDate2, 'Africa/Johannesburg') AS sa_time
FROM bright_tv_data_2,
     `1774379196223_bright_tv_dataset`;

Select date_format(`Duration 2`,'HH:mm:ss') as Time_spent_watching
from bright_tv_data_2,
     `1774379196223_bright_tv_dataset`;