CREATE OR REPLACE TABLE ev_core.fact_ports AS
SELECT
  station_id,
  status_code,                 -- E/T/P/U
  access_code,                 -- public/private
  open_date,
  last_confirmed,
  IFNULL(dc_fast_ports, 0) AS dc_fast_ports,
  IFNULL(l2_ports, 0)      AS l2_ports,
  (IFNULL(dc_fast_ports,0) + IFNULL(l2_ports,0)) AS total_ports,
  COALESCE(network_name, 'Unknown') AS network_name,
  state,
  city,
  lat,
  lon
FROM ev_core.stage_stations;
