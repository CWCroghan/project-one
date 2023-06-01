﻿  
  

## Environmental Pollution & Chronic Health Conditions: Uncovering the Connection

  
  

![Environmental Pollution & Chronic Health Conditions: Uncovering the Connection](https://github.com/CWCroghan/project-one/blob/main/slide_1.jpg)

  
  
  
  
  

  

### Overview

  

Our project focuses on analyzing the correlation between environmental factors and chronic diseases in different cities and areas. We are using datasets such as the 500 Cities data, chronic conditions spending data, healthcare spending data, superfund data, and air quality data to assess the environmental impact on these locations.

  

By examining the relationship between environmental pollution and the prevalence of chronic diseases, our goal is to identify areas with higher environmental risks and potential health implications. This analysis will provide insights into the connection between environmental conditions and chronic diseases, helping us understand the impact on population health.

  

  

### Purpose

The purpose of this analysis is to understand the correlation between environmental factors and chronic diseases in different cities and areas.

  

- We are trying to see a correlation between Environmental Factors and chronic diseases.

- We can gain insights into the potential health implications of living in areas with higher environmental risks.

- Do communities affected by multiple environmental stressors experience a higher rate of chronic diseases?

  

  

### Data 




  

The datasets we are utilizing are as follows:-

  

-  **500 Cities Data**

-  **Chronic Conditions Spending Data**

-  **Superfund Sites Data**

-  **Air Quality Data**

-  **Housing Price Index**

Several data processing operations were performed to enhance the quality and usability of the data. These operations included selecting relevant columns to extract specific data of interest, converting data types to ensure consistency, and reshaping the data to meet specific requirements. Duplicate records were identified and removed to improve data integrity. Foreign keys were created to establish relationships between tables, enabling efficient data linking and retrieval. Additionally, zip codes were mapped to Fips codes, county and state names were mapped to their respective Fips codes, and nearest points were calculated using latitude and longitude coordinates. These operations collectively aimed to improve data quality, facilitate analysis, and enable seamless integration with databases. Detailed documentation and instructions for implementing each operation are available for reference.

![image](https://github.com/CWCroghan/project-one/assets/119648166/04eb3f69-58e4-4c08-8e0a-3fda774bfd4d)



  

### Database Design



PostgreSQL is used as Database. 
We are organizing processed datasets into our database - **toxic_site_hazards_db**
The data in this database is stored under 5 tables .
The most obvious connection between the tables seemed to be place_tract id and county fips  which was used to join all the tables  to  create a final dataset .This data is also hosted in AWS S3 bucket which is further used for machine learning model and Tableau Visualization.

We also made use of database backup and restoration process for version control of the data at each stage.
The detailed step by step process for backup and restoration can be found here [backup & restoration.](https://github.com/CWCroghan/project-one/blob/main/Database_Backup_Restore.md)

  A link for  [database creation script .](https://github.com/CWCroghan/project-one/blob/main/Database_Creation_script.sql)

  
![image](https://github.com/CWCroghan/project-one/assets/119648166/f6403d73-e276-4811-bf23-3b4abc136c3c)

  

### Technology used

We utilized the below mentioned methods for data cleaning and preprocessing :

  
  

1. Python

  

2. Pandas

  

3. Numpy
4. R
5. Tableau
6. Scikit Learn
7. PostgreSQL

For each dataset, we had a specific approach to the based on dataset's requirements. These approaches involved steps such as handling missing values, removing duplicates, standardizing data formats, and resolving inconsistencies. The links below provide information on each dataset cleaning approach.

  

[500 City Data](https://github.com/CWCroghan/project-one/blob/main/dataProcessing/500_City.md)

  

[Air Quality Data](https://github.com/CWCroghan/project-one/blob/main/dataProcessing/AirQuality.md)

  

[Chronic Condition Spending](https://github.com/CWCroghan/project-one/blob/main/dataProcessing/ChronicConditionsSpending.md)

  

[Superfund Sites Data](https://github.com/CWCroghan/project-one/blob/main/dataProcessing/Superfund.md)

  
  ### Machine Learning
 -   **Prediction**
	  Predict underperforming or outperforming Housing Price Index based on the rate of chronic conditions in an area.
    

 -   **Independent Variables**
     Rate of High Blood Pressure
     Rate of Cancer
     Rate of Asthma
     Rate of Heart Disease

 - **Revised Independent Variables**
 Added:
 Fine particulate matter (PM2.5)
  Ozone
  

 - **Dependent Variable**
    Housing Price Index

  
  ### Dashboard
We utilized Tableau to develop and host our interactive dashboard, which seamlessly connects to our Postgres database hosted on AWS through a direct connection.

You can access our comprehensive dashboard by visiting the link [Dashboard](https://public.tableau.com/authoring/Project4_16854922280320/Project1#1)

-   Select superfund site to  filter by the city and to see the chronic disease and total cost.
    
-   Select on state and it will give you information on information based on county and HPI(Housing Price Index)

**![](https://lh6.googleusercontent.com/2Tg3AJufNwSDl7itxg4SVkBTuVghBpRXFWN6Nyk1i8wlJcfzu2hd3pG04HlntWSHHvlQdumj6TQE7mLsZ8M8A-90ZfRx4xG1hiEIkvbsk0Li-L-YsgODpROr4AKp9SMPusUS-yoyAGsiVjuDnBjh9g43=s2048)**

 - Ability to select by state to filter out information

**![](https://lh5.googleusercontent.com/jezt4oyUPWktqN21_0vaU-RdvVFC32DpQJPftiaLdNhIm1xp5VWtos4jLR5o9fx4VxJCPOD6Ad4jl8NOBva5cCa1wOvOYVyH0MFWXGRNWZetdNGsSnBa5E08llOnh4Q7kB8It0EIjpst1xgpWqyFuNGf=s2048)**
### Results

  



  

  

### Recommendations for Future Analysis:

-    We will delve deeper into machine learning models and refine them to improve their performance and achieve a more accurate and precise fitting model.



#### [](https://github.com/misterrustia/Final_project#improvements-we-would-have-made)Improvements We Would Have Made:

One major area where we feel we could have improved our project is by taking more time to discover more data sets and factors that may influence housing prices. There are likely many variables we could not find data on handily, and that would probably be the best place to improve our project.

  


  

  



  



  


  

  



  

  

### References

  

| Data Description | Website | Filenames |

| :---| :---| :---|

|Center for Medicare and Medicaid data 2017 | https://www.cms.gov/Research-Statistics-Data-and-Systems/Statistics-Trends-and-Reports/Chronic-Conditions/CC_Main | County_Table_Chronic_Conditions_Spending_2017 |

|500 City Study 2017 data | https://www.cdc.gov/places/index.html | 500_Cities__Census_Tract-level_Data__GIS_Friendly_Format___2019_release.csv |

|brownfields/superfund and Natural/Climate Change disasters | https://edg.epa.gov/metadata/catalog/search/resource/details.page?uuid=%7BA6AB558B-2E03-47B6-B261-43341B9F6B67%7D | SF_CRSI_OLEM |

|Air Monitoring 2017 | https://aqs.epa.gov/aqsweb/airdata/download_files.html#Annual | annual_conc_by_monitor_2017.csv |

|Housing Price Index | https://www.fhfa.gov/DataTools/Downloads/Pages/House-Price-Index-Datasets.aspx |HPI_AT_BDL_ZIP5.xlsx |

  

Slideshow: https://docs.google.com/presentation/d/16hQQiaqVirLmnhQqJrqOxvXS-a18GUJ2hBw7oJJt-j4/edit#slide=id.g245cf198de5_0_16

  

Tableau Dashboard: https://public.tableau.com/authoring/Project4_16854922280320/Project1#1

  

Amazon Web Services: project1.c4ay8x7sqcwl.us-east-2.rds.amazonaws.com
