CREATE OR REPLACE TABLE ev_mart.dashboard AS
WITH base AS (
  SELECT
    state,
    COALESCE(network_name, 'Unknown') AS network_name,
    status_code,
    SUM(total_ports) AS ports,
    SUM(dc_fast_ports) AS dc_fast_ports,
    SUM(l2_ports) AS l2_ports,
    COUNT(DISTINCT station_id) AS stations
  FROM ev_core.fact_ports
  GROUP BY 1,2,3
)
SELECT
  state,
  network_name,
  SUM(ports)         AS ports,
  SUM(dc_fast_ports) AS dc_fast_ports,
  SUM(l2_ports)      AS l2_ports,
  SUM(stations)      AS stations,
  SAFE_DIVIDE(SUM(IF(status_code='E', stations, 0)), SUM(stations)) AS uptime_rate
FROM base
GROUP BY 1,2;
