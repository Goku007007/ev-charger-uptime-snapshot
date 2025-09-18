CREATE OR REPLACE TABLE ev_core.dim_connector AS
WITH base AS (
  SELECT TRIM(conn) AS connector_name
  FROM ev_core.stage_stations,
  UNNEST(SPLIT(REPLACE(connectors_raw, ';', ','))) AS conn
  WHERE connectors_raw IS NOT NULL AND LENGTH(TRIM(conn)) > 0
)
SELECT DISTINCT
  GENERATE_UUID() AS connector_id,
  connector_name
FROM base;
