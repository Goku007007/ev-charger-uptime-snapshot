EXPORT DATA OPTIONS(
  uri='gs://ev-uptime-gn-20250917-ev-demo-us-1694976645/ev/curated/ev_dashboard_*.csv',
  format='CSV',
  overwrite=true
) AS
SELECT * FROM ev_mart.dashboard;
