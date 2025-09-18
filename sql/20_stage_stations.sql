-- Stage & standardize EV-only rows from the native STRING-loaded table.
-- We CAST the fields we need. Safe for mixed formats.

CREATE OR REPLACE TABLE ev_core.stage_stations AS
WITH s AS (
  SELECT
    -- All columns in ev_raw.stations_native are STRING now
    ID,
    Fuel_Type_Code,
    Status_Code,
    Access_Code,
    Open_Date,
    Date_Last_Confirmed,
    EV_DC_Fast_Count,
    EV_Level2_EVSE_Num,
    EV_Connector_Types,
    EV_Network,
    State,
    City,
    ZIP,
    Latitude,
    Longitude
  FROM ev_raw.stations_native
)
SELECT
  SAFE_CAST(ID AS INT64) AS station_id,

  UPPER(TRIM(Fuel_Type_Code)) AS fuel_type_code,

  CASE
    WHEN UPPER(Status_Code) IN ('E','T','P') THEN UPPER(Status_Code)
    ELSE 'U'
  END AS status_code,

  LOWER(TRIM(Access_Code)) AS access_code,

  COALESCE(
    SAFE_CAST(Open_Date AS DATE),
    SAFE.PARSE_DATE('%Y-%m-%d', Open_Date),
    SAFE.PARSE_DATE('%m/%d/%Y', Open_Date)
  ) AS open_date,

  COALESCE(
    SAFE_CAST(Date_Last_Confirmed AS DATE),
    SAFE.PARSE_DATE('%Y-%m-%d', Date_Last_Confirmed),
    SAFE.PARSE_DATE('%m/%d/%Y', Date_Last_Confirmed)
  ) AS last_confirmed,

  SAFE_CAST(EV_DC_Fast_Count   AS INT64) AS dc_fast_ports,
  SAFE_CAST(EV_Level2_EVSE_Num AS INT64) AS l2_ports,

  EV_Connector_Types AS connectors_raw,

  NULLIF(TRIM(EV_Network), '') AS network_name,

  TRIM(State) AS state,
  TRIM(City)  AS city,
  -- keep ZIP as text, preserving leading zeros and weird cases like "CA"
  TRIM(ZIP)   AS zip,

  SAFE_CAST(Latitude  AS FLOAT64) AS lat,
  SAFE_CAST(Longitude AS FLOAT64) AS lon

FROM s
WHERE UPPER(Fuel_Type_Code) = 'ELEC';
