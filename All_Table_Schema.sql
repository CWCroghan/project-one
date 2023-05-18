-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

CREATE TABLE "500_City_Data" (
    "StateAbbr" VARCHAR   NOT NULL,
    "PlaceName" VARCHAR   NOT NULL,
    "PlaceFIPS" INTEGER   NOT NULL,
    "TractFIPS" INTEGER   NOT NULL,
    "Place_TractID" VARCHAR   NOT NULL,
    "Population2010" FLOAT   NOT NULL,
    "Insurance" FLOAT   NOT NULL,
    "HighBloodPressure" FLOAT   NOT NULL,
    "Cancer" FLOAT   NOT NULL,
    "Asthma" FLOAT   NOT NULL,
    "HeartDisease" FLOAT   NOT NULL,
    "AnnualCheckUps" FLOAT   NOT NULL,
    "Smokes" FLOAT   NOT NULL,
    "MentalHealthIssues" FLOAT   NOT NULL,
    "Latitude" FLOAT   NOT NULL,
    "Longitude" FLOAT   NOT NULL,
    "CountyFIPS" INTEGER   NOT NULL,
    CONSTRAINT "pk_500_City_Data" PRIMARY KEY (
        "Place_TractID"
     )
);

CREATE TABLE "chronic_conditions_spending" (
    "State" varchar(3)   NOT NULL,
    "StateAbbr" varchar(3)   NOT NULL,
    "County" varchar(100)   NOT NULL,
    "CountyFIPS" INTEGER   NOT NULL,
    "Asthma" FLOAT   NOT NULL,
    "AFHeartDisease" FLOAT   NOT NULL,
    "COPD" FLOAT   NOT NULL,
    "Depression" FLOAT   NOT NULL,
    "HeartFailure" FLOAT   NOT NULL,
    "Hypertension" FLOAT   NOT NULL,
    "CoronaryArtery" FLOAT   NOT NULL,
    "Psychotic" FLOAT   NOT NULL,
    "Stroke" FLOAT   NOT NULL,
    "TotalCost" FLOAT   NOT NULL,
    CONSTRAINT "pk_chronic_conditions_spending" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "HousingPriceIndex" (
    "tract" bigint   NOT NULL,
      "HPI" FLOAT   NOT NULL

);

CREATE TABLE "Superfund" (
    " Place_TractID" varvchar(50) NOT NULL, 
    "city_state" varchar (100) NOT NULL, 
    "SFCount" int NOT NULL 

);

CREATE TABLE "Air_Quality" (
    "
    "Place_TractID" VARCHAR(50)   NOT NULL,
    "SiteId" double precision   NOT NULL,
    "PM2.5_Exceptional" double precision   NOT NULL,
    "PM2.5_ExceedCount" double precision   NOT NULL,
    "PM2.5_Max" double precision   NOT NULL,
    "Ozone_Exceptional" double precision   NOT NULL,
    "Ozone_ExceedCount" double precision  NOT NULL,
    "Ozone_Max" double precision   NOT NULL
            
);




