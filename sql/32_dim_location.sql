CREATE OR REPLACE TABLE ev_core.dim_location AS
SELECT DISTINCT
  state,
  city
FROM ev_core.stage_stations
WHERE state IS NOT NULL;
