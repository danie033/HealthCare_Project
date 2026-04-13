DROP TABLE IF EXISTS dim_hcpcs;
CREATE TABLE dim_hcpcs (
    hcpcs_cd       VARCHAR(10) PRIMARY KEY,
    hcpcs_drug_ind VARCHAR(1)
);
INSERT INTO dim_hcpcs (hcpcs_cd, hcpcs_drug_ind)
SELECT hcpcs_cd, MAX(hcpcs_drug_ind) AS hcpcs_drug_ind
FROM medicare_raw
WHERE hcpcs_cd IS NOT NULL
GROUP BY hcpcs_cd;