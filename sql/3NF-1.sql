CREATE TABLE dim_geography (
    rndrng_prvdr_geo_cd VARCHAR(10) PRIMARY KEY
);
INSERT INTO dim_geography (rndrng_prvdr_geo_cd)
SELECT DISTINCT rndrng_prvdr_geo_cd
FROM medicare_raw
WHERE rndrng_prvdr_geo_cd IS NOT NULL;