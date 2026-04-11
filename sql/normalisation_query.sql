CREATE TABLE medicare_norm AS
WITH stats AS (
    SELECT
        AVG(tot_rndrng_prvdrs)  AS m1, STDDEV(tot_rndrng_prvdrs)  AS s1,
        AVG(tot_benes)          AS m2, STDDEV(tot_benes)          AS s2,
        AVG(tot_srvcs)          AS m3, STDDEV(tot_srvcs)          AS s3,
        AVG(tot_bene_day_srvcs) AS m4, STDDEV(tot_bene_day_srvcs) AS s4
    FROM medicare_raw
)
SELECT
    rndrng_prvdr_geo_cd,
    hcpcs_cd,
    hcpcs_drug_ind,
    place_of_srvc,
    year,
    avg_sbmtd_chrg,
    ROUND(((tot_rndrng_prvdrs  - m1) / s1)::numeric, 6) AS norm_rndrng_prvdrs,
    ROUND(((tot_benes          - m2) / s2)::numeric, 6) AS norm_benes,
    ROUND(((tot_srvcs          - m3) / s3)::numeric, 6) AS norm_srvcs,
    ROUND(((tot_bene_day_srvcs - m4) / s4)::numeric, 6) AS norm_bene_day_srvcs
FROM medicare_raw, stats;