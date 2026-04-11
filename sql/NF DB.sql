CREATE TABLE medicare_nf (
    fact_id             SERIAL           PRIMARY KEY,
    rndrng_prvdr_geo_cd VARCHAR(10)      NOT NULL REFERENCES dim_geography(rndrng_prvdr_geo_cd),
    hcpcs_cd            VARCHAR(10)      NOT NULL REFERENCES dim_hcpcs(hcpcs_cd),
    place_of_srvc       VARCHAR(2)       NOT NULL REFERENCES dim_place_of_service(place_of_srvc),
    year                VARCHAR(4)       NOT NULL,
    tot_rndrng_prvdrs   INTEGER,
    tot_benes           INTEGER,
    tot_srvcs           DOUBLE PRECISION,
    tot_bene_day_srvcs  INTEGER,
    avg_sbmtd_chrg      DOUBLE PRECISION
);

INSERT INTO medicare_nf (
    rndrng_prvdr_geo_cd, hcpcs_cd, place_of_srvc, year,
    tot_rndrng_prvdrs, tot_benes, tot_srvcs,
    tot_bene_day_srvcs, avg_sbmtd_chrg
)
SELECT
    rndrng_prvdr_geo_cd, hcpcs_cd, place_of_srvc, year,
    tot_rndrng_prvdrs, tot_benes, tot_srvcs,
    tot_bene_day_srvcs, avg_sbmtd_chrg
FROM medicare_raw;

CREATE INDEX idx_fact_geo   ON medicare_nf (rndrng_prvdr_geo_cd);
CREATE INDEX idx_fact_hcpcs ON medicare_nf (hcpcs_cd);
CREATE INDEX idx_fact_year  ON medicare_nf (year);
CREATE INDEX idx_fact_pos   ON medicare_nf (place_of_srvc);
