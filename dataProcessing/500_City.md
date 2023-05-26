# Steps in Processing the 500 City Study

1. Load 
    read file -  500_Cities__Census_Tract-level_Data__GIS_Friendly_Format___2019_release.csv
    into a dataFrame
2. Drop columns that will not be used
3. Split GeoLocation into Lat & Long
4. Remove '()' from the Lat & Long variables
5. Drop GeoLocation
6. Rename Variables into something more easily understood
7. Convert Population, Lat & Long into numeric variables
8. Drop rows with null values
9. Verify there are no duplicate records
10. Create a County Level FIPS to use as a foreign key
11. Export the dataFrame to a csv file - /ProcessedData/500_City_cleaned.csv 