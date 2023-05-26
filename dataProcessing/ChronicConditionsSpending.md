# Steps in Processing the Chronic Conditions Spending

1. Load 
    read file -  County_Table_Chronic_Conditions_Spending_2017_cwc.xlsx (Standardized Spending) into a dataFrame
2. Renaming Columns 
    - remove trailing blanks
    - make more condences names.

3. Convert columns to numeric 
4. Calculate a Total Spending Column
5. Change FIPS to interger type
6. Read in the 500 City data to get unique County FIPS for limiting the data to those counties in the 500 City
7. Keep only the columns of interest
   - State          
   - StateAbbr      
   - County         
   - CountyFIPS     
   - Asthma         
   - AFHeartDisease 
   - COPD           
   - Depression     
   - HeartFailure   
   - Hypertension   
   - CoronaryArtery 
   - Psychotic      
   - Stroke         
   - TotalCost      
8.  Create a County Level FIPS to use as a foreign key
9. Export the dataFrame to a csv file - /ProcessedData/Chronic_Conditions_Spending.csv 