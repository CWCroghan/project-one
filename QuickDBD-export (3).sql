-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "chronic_conditions_spending" (
    "State" varchar(3)   NOT NULL,
    "StateAbbr" varchar(50)   NOT NULL,
    "County" varchar(100)   NOT NULL,
    "CountyFIPS" int   NOT NULL,
    "Asthma" float   NOT NULL,
    "AFHeartDisease" float   NOT NULL,
    "COPD" float   NOT NULL,
    "Depression" float   NOT NULL,
    "HeartFailure" float   NOT NULL,
    "Hypertension" float   NOT NULL,
    "CoronaryArtery" float   NOT NULL,
    "Psychotic" float   NOT NULL,
    "Stroke" float   NOT NULL,
    "TotalCost" float   NOT NULL,
    CONSTRAINT "pk_chronic_conditions_spending" PRIMARY KEY (
        "State"
     )
);

CREATE TABLE "HousingPriceIndex2017" (
    "ZipCode" int   NOT NULL,
    "Year" date   NOT NULL,
    "AnnualChange" float   NOT NULL,
    "HPI" float   NOT NULL,
    "HPI_1990_Base" float   NOT NULL,
    "HPI_2000_Base" float   NOT NULL,
    "tract" int   NOT NULL,
    "usps_zip_pref" varchar(50)   NOT NULL,
    "usps_zip_pref_st" varchar(50)   NOT NULL,
    "res_ratio" float   NOT NULL,
    "bus_ratio" float   NOT NULL,
    "oth_ratio" float   NOT NULL,
    "tot_ratio" float   NOT NULL,
    CONSTRAINT "pk_HousingPriceIndex2017" PRIMARY KEY (
        "ZipCode"
     )
);

CREATE TABLE "superfund" (
    "Site_EPA_ID" int   NOT NULL,
    "City" varchar(50)   NOT NULL,
    "County_FIPS" int   NOT NULL,
    "County" varchar(100)   NOT NULL,
    "State" varchar(50)   NOT NULL,
    "StateAbbr" varchar(3)   NOT NULL,
    "Longitude" float   NOT NULL,
    "Latitude" float   NOT NULL,
    CONSTRAINT "pk_superfund" PRIMARY KEY (
        "Site_EPA_ID"
     )
);

ALTER TABLE "HousingPriceIndex2017" ADD CONSTRAINT "fk_HousingPriceIndex2017_usps_zip_pref_st" FOREIGN KEY("usps_zip_pref_st")
REFERENCES "chronic_conditions_spending" ("StateAbbr");

ALTER TABLE "superfund" ADD CONSTRAINT "fk_superfund_County_FIPS_County_StateAbbr" FOREIGN KEY("County_FIPS", "County", "StateAbbr")
REFERENCES "chronic_conditions_spending" ("CountyFIPS", "County", "StateAbbr");

