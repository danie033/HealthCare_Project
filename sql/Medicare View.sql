CREATE VIEW vw_medicare AS
SELECT
    g.rndrng_prvdr_geo_cd,
    h.hcpcs_cd,
    h.hcpcs_drug_ind,
    p.place_of_srvc,
    p.place_of_srvc_desc,
    f.year,
    f.tot_rndrng_prvdrs,
    f.tot_benes,
    f.tot_srvcs,
    f.tot_bene_day_srvcs,
    f.avg_sbmtd_chrg
FROM medicare_nf f
JOIN dim_geography        g ON f.rndrng_prvdr_geo_cd = g.rndrng_prvdr_geo_cd
JOIN dim_hcpcs            h ON f.hcpcs_cd            = h.hcpcs_cd
JOIN dim_place_of_service p ON f.place_of_srvc       = p.place_of_srvc;
