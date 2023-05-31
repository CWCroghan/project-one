-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "city_data" (
    "StateAbbr" varchar   NOT NULL,
    "PlaceName" varchar   NOT NULL,
    "PlaceFIPS" integer   NOT NULL,
    "TractFIPS" bigint   NOT NULL,
    "Place_TractID" varchar   NOT NULL,
    "Population2010" double   NOT NULL,
    "Insurance" double   NOT NULL,
    "HighBloodPressure" double   NOT NULL,
    "Cancer" double   NOT NULL,
    "Asthma" double   NOT NULL,
    "HeartDisease" double   NOT NULL,
    "AnnualCheckUps" double   NOT NULL,
    "Smokes" double   NOT NULL,
    "MentalHealthIssues" double   NOT NULL,
    "Latitude" double   NOT NULL,
    "Longitude" double   NOT NULL,
    "CountyFIPS" integer   NOT NULL,
    CONSTRAINT "pk_city_data" PRIMARY KEY (
        "Place_TractID"
     )
);

CREATE TABLE "Chronic_Conditions_Spending" (
    "State" varchar(50)   NOT NULL,
    "StateAbbr" varchar(3)   NOT NULL,
    "County" varchar(100)   NOT NULL,
    "CountyFIPS" int   NOT NULL,
    "Asthma" double   NOT NULL,
    "AFHeartDisease" double   NOT NULL,
    "COPD" double   NOT NULL,
    "Depression" double   NOT NULL,
    "HeartFailure" double   NOT NULL,
    "Hypertension" double   NOT NULL,
    "CoronaryArtery" double   NOT NULL,
    "Psychotic" double   NOT NULL,
    "Stroke" double   NOT NULL,
    "TotalCost" double   NOT NULL,
    CONSTRAINT "pk_Chronic_Conditions_Spending" PRIMARY KEY (
        "CountyFIPS"
     )
);

CREATE TABLE "Air_quality" (
    "Place_TractID" varchar(50)   NOT NULL,
    "SiteId" double   NOT NULL,
    "PM2.5_Exceptional" double   NOT NULL,
    "PM2.5_ExceedCount" double   NOT NULL,
    "PM2.5_Max" double   NOT NULL,
    "Ozone_Exceptional" double   NOT NULL,
    "Ozone_ExceedCount" double   NOT NULL,
    "Ozone_Max" double   NOT NULL,
    CONSTRAINT "pk_Air_quality" PRIMARY KEY (
        "SiteId"
     )
);

CREATE TABLE "Superfund" (
    "Place_TractID" varchar(50)pk   NOT NULL,
    "city_state" varchar(100)   NOT NULL,
    "SFCount" integer   NOT NULL
);

CREATE TABLE "Housing_Price_index" (
    "tract" bigint   NOT NULL,
    "hpi" double   NOT NULL,
    CONSTRAINT "pk_Housing_Price_index" PRIMARY KEY (
        "tract"
     )
);

ALTER TABLE "city_data" ADD CONSTRAINT "fk_city_data_Place_TractID" FOREIGN KEY("Place_TractID")
REFERENCES "Air_quality" ("Place_TractID");

ALTER TABLE "city_data" ADD CONSTRAINT "fk_city_data_CountyFIPS" FOREIGN KEY("CountyFIPS")
REFERENCES "Chronic_Conditions_Spending" ("CountyFIPS");

ALTER TABLE "Air_quality" ADD CONSTRAINT "fk_Air_quality_Place_TractID" FOREIGN KEY("Place_TractID")
REFERENCES "Housing_Price_index" ("tract");

ALTER TABLE "Superfund" ADD CONSTRAINT "fk_Superfund_Place_TractID" FOREIGN KEY("Place_TractID")
REFERENCES "city_data" ("Place_TractID");

ALTER TABLE "Housing_Price_index" ADD CONSTRAINT "fk_Housing_Price_index_tract" FOREIGN KEY("tract")
REFERENCES "Superfund" ("Place_TractID");

