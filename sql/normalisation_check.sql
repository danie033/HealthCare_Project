SELECT
    ROUND(AVG(norm_rndrng_prvdrs)::numeric,  4) AS mean_prvdrs,
    ROUND(STDDEV(norm_rndrng_prvdrs)::numeric, 4) AS std_prvdrs,
    ROUND(AVG(norm_benes)::numeric,           4) AS mean_benes,
    ROUND(STDDEV(norm_benes)::numeric,         4) AS std_benes,
    ROUND(AVG(norm_srvcs)::numeric,           4) AS mean_srvcs,
    ROUND(STDDEV(norm_srvcs)::numeric,         4) AS std_srvcs,
    ROUND(AVG(norm_bene_day_srvcs)::numeric,  4) AS mean_days,
    ROUND(STDDEV(norm_bene_day_srvcs)::numeric, 4) AS std_days
FROM medicare_norm;