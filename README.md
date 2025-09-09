#                        MoMo SMS ETL & Dashboard

## Team Information
- **Team Name**: group 16
-                                      

                                             **Project Description**:  
  
This project processes MoMo SMS data (in XML format), cleans and categorizes transactions, stores them in a relational database, and provides a frontend dashboard to analyze and visualize the data.


- **Team Members**:  
  - Ndayisenga Audran   
  - Shema Emmanuel 
  - Mihigo Ntaganda Audric  
  - Uwase Ntwali cynthia  

---

## High-Level Architecture

The system has the following flow:

1. **MoMo SMS (XML)** → Input raw data.
2. **ETL Pipeline** → Parse XML → Clean & Normalize → Categorize transactions → Load into DB.
3. **Database (SQLite)** → Stores structured transactions.
4. **Processed JSON (dashboard.json)** → Summarized data for the frontend.
5. **Frontend Dashboard (HTML, CSS, JS)** → Visualizes charts/tables from JSON.
6. *(Optional)* **FastAPI Layer** → Provides API endpoints for transactions & analytics.

###  Architecture Diagram  
![My First Board](https://github.com/user-attachments/assets/d5f595d0-07b0-4299-abdd-7be21561b50b)

   [View Architecture Diagram](https://miro.com/welcomeonboard/M1k2a0Qxa1lLbk9NSU8wVXY0TFd3QnFNMytHRjVSQjNOZ2c2MFlNYU5ORVp1ajJXK3pEL0xMV0Yxd0ZMQzhManlHekN6VG9zR0ZWUGRUQTB0cldyZ2pLMXFoSi9BRjdpcTlqemFBTm10RjBNczlUVWNCTVhHcmY5Z3pmdnMyQzdQdGo1ZEV3bUdPQWRZUHQzSGl6V2NBPT0hdjE=?share_link_id=645786963715)

---

##    Scrum Board  
We are using a Scrum board to track progress with **To Do, In Progress, Done**.  
    [View Scrum Board]  https://trello.com/invite/b/68c09170cf3b0565f67a0a90/ATTI14f0a815555c11c9c2a910bdd6a0bf9bDF0C557E/momo-sms-etl-dashboard-scrum-board

---

##   Project Organization

├── README.md
├── .env.example
├── requirements.txt
├── index.html
├── web/
├── data/
├── etl/
├── api/
├── scripts/
└── tests/

markdown
Copy code

- `etl/` → ETL scripts (parse, clean, categorize, load).  
- `data/` → Raw XML, processed JSON, and logs.  
- `web/` → Frontend assets (HTML, CSS, JS).  
- `api/` → Optional FastAPI endpoints.  
- `scripts/` → Helper scripts to run ETL, export JSON, serve frontend.  
- `tests/` → Unit tests for ETL steps. 
