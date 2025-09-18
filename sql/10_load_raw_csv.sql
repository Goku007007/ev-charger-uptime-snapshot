CREATE OR REPLACE EXTERNAL TABLE ev_raw.stations_ext
OPTIONS (
  format = 'CSV',
  uris = ['gs://ev-uptime-gn-20250917-ev-demo/ev/raw/alt_fuel_stations.csv'],
  skip_leading_rows = 1,
  field_delimiter = ',',
  allow_quoted_newlines = TRUE
);
