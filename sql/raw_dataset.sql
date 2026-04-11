CREATE TABLE medicare_raw (
    Rndrng_Prvdr_Geo_Cd VARCHAR(10),
    HCPCS_Cd VARCHAR(10),
    HCPCS_Drug_Ind VARCHAR(1),
    Place_Of_Srvc VARCHAR(2),
    Tot_Rndrng_Prvdrs INTEGER,
    Tot_Benes INTEGER,
    Tot_Srvcs DOUBLE PRECISION,
    Tot_Bene_Day_Srvcs INTEGER,
    Avg_Sbmtd_Chrg DOUBLE PRECISION,
    Year VARCHAR(4)
);