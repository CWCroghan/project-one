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
    "ZipCode" INTEGER   NOT NULL,
    "Year" DATE   NOT NULL,
    "AnnualChange" FLOAT   NOT NULL,
    "HPI" FLOAT   NOT NULL,
    "HPI_1990_Base" FLOAT   NOT NULL,
    "HPI_2000_Base" FLOAT   NOT NULL,
    "tract" INTEGER   NOT NULL,
    "usps_zip_pref" VARCHAR   NOT NULL,
    "usps_zip_pref_st" VARCHAR   NOT NULL,
    "res_ratio" FLOAT   NOT NULL,
    "bus_ratio" FLOAT   NOT NULL,
    "oth_ratio" FLOAT   NOT NULL,
    "tot_ratio" FLOAT   NOT NULL,
    CONSTRAINT "pk_HousingPriceIndex" PRIMARY KEY (
        "ZipCode"
     )
);

CREATE TABLE "Superfund" (
    "Site_EPA_ID" INTEGER   NOT NULL,
    "City" VARCHAR(50)   NOT NULL,
    "County_FIPS" INTEGER   NOT NULL,
    "County" VARCHAR(100)   NOT NULL,
    "State" VARCHAR(50)   NOT NULL,
    "StateAbbr" VARCHAR(3)   NOT NULL,
    "Longitude" FLOAT   NOT NULL,
    "Latitude" FLOAT   NOT NULL,
    CONSTRAINT "pk_Superfund" PRIMARY KEY (
        "Site_EPA_ID"
     )
);

CREATE TABLE "air_quality" (
    "Place_TractID" VARCHAR(50)   NOT NULL,
    "SiteId" double precision   NOT NULL,
    "PM2.5_Exceptional" double precision   NOT NULL,
    "PM2.5_ExceedCount" double precision   NOT NULL,
    "PM2.5_Max" double precision   NOT NULL,
    "Ozone_Exceptional" double precision   NOT NULL,
    "Ozone_ExceedCount" double precision  NOT NULL,
    "Ozone_Max" double precision   NOT NULL
            
);

ALTER TABLE "500_City_Data" ADD CONSTRAINT "fk_500_City_Data_StateAbbr" FOREIGN KEY("StateAbbr")
REFERENCES "Superfund" ("StateAbbr");

ALTER TABLE "500_City_Data" ADD CONSTRAINT "fk_500_City_Data_PlaceName_PlaceFIPS_TractFIPS" FOREIGN KEY("PlaceName", "PlaceFIPS", "TractFIPS")
REFERENCES "Air_Quality" ("PlaceName", "PlaceFIPS", "TractFIPS");

ALTER TABLE "500_City_Data" ADD CONSTRAINT "fk_500_City_Data_CountyFIPS" FOREIGN KEY("CountyFIPS")
REFERENCES "chronic_conditions_spending" ("CountyFIPS");

ALTER TABLE "chronic_conditions_spending" ADD CONSTRAINT "fk_chronic_conditions_spending_State_County_CountyFIPS" FOREIGN KEY("State", "County", "CountyFIPS")
REFERENCES "Superfund" ("State", "County", "County_FIPS");

ALTER TABLE "chronic_conditions_spending" ADD CONSTRAINT "fk_chronic_conditions_spending_StateAbbr" FOREIGN KEY("StateAbbr")
REFERENCES "HousingPriceIndex" ("usps_zip_pref_st");

ALTER TABLE "HousingPriceIndex" ADD CONSTRAINT "fk_HousingPriceIndex_usps_zip_pref" FOREIGN KEY("usps_zip_pref")
REFERENCES "Superfund" ("City");

ALTER TABLE "Air_Quality" ADD CONSTRAINT "fk_Air_Quality_StateAbbr_CountyFIPS" FOREIGN KEY("StateAbbr", "CountyFIPS")
REFERENCES "chronic_conditions_spending" ("StateAbbr", "CountyFIPS");

