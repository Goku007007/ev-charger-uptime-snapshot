CREATE OR REPLACE TABLE ev_core.dim_network AS
SELECT DISTINCT
  COALESCE(network_name, 'Unknown') AS network_name
FROM ev_core.stage_stations;
