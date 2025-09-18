# EV Charger Uptime & Coverage Pulse

<p align="left">
  <img src="https://img.shields.io/badge/GCP-Cloud-4285F4?logo=googlecloud&logoColor=white"/>
  <img src="https://img.shields.io/badge/BigQuery-SQL-669DF6?logo=googlecloud&logoColor=white"/>
  <img src="https://img.shields.io/badge/Tableau-Analytics-1F477E?logo=tableau&logoColor=white"/>
  <img src="https://img.shields.io/badge/ETL-Shell%20Scripts-333333"/>
  <img src="https://img.shields.io/badge/Data-EV%20Charging-5B5B5B"/>
</p>

`#DataEngineering` `#Analytics` `#BigQuery` `#Tableau` `#ETL` `#GCP` `#EVCharging`



🚗⚡ A data engineering + business intelligence project analyzing EV charger reliability and coverage across the U.S. using **BigQuery** and **Tableau Public**.

## 🔑 Key Highlights
- Built an **end-to-end pipeline**:  
  AFDC CSV → Google Cloud Storage → BigQuery (raw → core → mart) → Export to Tableau.
- Modeled data into a **curated mart layer** for analytics (uptime, stations, ports, network performance).
- Designed **Tableau dashboard** to track charger availability, coverage, and reliability trends.
- Delivered **KPIs** like:
  - Total Stations & Ports
  - Weighted Uptime %
  - DC-Fast Share %
  - State-wise & Network-wise performance
  - Geospatial station map

👉 [View Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/gokul.nandakumar/viz/EVChargerUptimeCoveragePulse-U_S_SnapshotEdition/Dashboard1)

---

## 🏗️ Tech Stack
- **Cloud Storage (GCS)** → staging CSVs  
- **BigQuery** → SQL transformations (raw → core → mart layers)  
- **Tableau Public** → BI dashboard  

---

## 📂 Project Structure
- ev-charger-uptime-snapshot/
  - data/ Exported datasets from BigQuery (station-level, dashboard-level, trends)
  - sql/ BigQuery SQL scripts (raw, core, mart, exports)
  - docs/ Architecture, schema diagrams, screenshots
  - README.md Project documentation


---

## 📊 Dashboard Insights
- **Charger Ports by Network**: Stacked bar showing DC-fast vs L2 distribution.  
- **State Uptime Leaderboard**: Weighted uptime % across states with median line.  
- **Station Map**: Interactive U.S. map of charger locations & status.  
- **Network Leaderboard by State**: Table of stations, ports, uptime %.  

---

## Project Architecture
<img width="459" height="289" alt="Screenshot 2025-09-18 at 12 49 19 AM" src="https://github.com/user-attachments/assets/df7539df-66a3-45bb-afe6-2b34c4246784" />

---

##Schema
<img width="1100" height="699" alt="Screenshot 2025-09-18 at 1 14 44 AM" src="https://github.com/user-attachments/assets/806e4ca8-6dce-4155-b595-15d2b38faa79" />

---

##Dashboard
<img width="1534" height="815" alt="Dashboard 1" src="https://github.com/user-attachments/assets/f533d134-f320-4065-91dc-7fd56e104e1e" />
👉 [View Interactive Dashboard on Tableau Public](https://public.tableau.com/app/profile/gokul.nandakumar/viz/EVChargerUptimeCoveragePulse-U_S_SnapshotEdition/Dashboard1)


## ✍️ Author
**Gokul Nandakumar**  
- [LinkedIn](https://www.linkedin.com/in/gokulananthn)  
- [Tableau Public](https://public.tableau.com/app/profile/gokul.nandakumar)  




