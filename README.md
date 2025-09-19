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

## DATABASE DESIGN EXPLANATION
We are designing this database of momo app to receive and send money and also get reports and logs to explain and justify every transaction and actions made by users/customers. The main goal and purpose of this is to ensure scalability, integrity, and clear representation of these business requirements. As in the diagram I used one entity of customer for sender/receiver it represents all system users since both sender and receiver are customers.

The transaction entity is there to record all money movements and it has sender/receiver information and also category_id and shows final activities. It includes transaction_id, amount, date, And those foreign keys  linking to customer and transaction_category entity.
 Additionally, each transaction references a Transaction_Category, which classifies activities (e.g., deposits, transfers, payments). This normalization supports efficient analysis and future expansion if more categories are introduced.

System_log entity is there for auditing, error tracking and accountability. This will help developers to improve the system time after time and also help them to maintain the security of the system and also controlling and auditing some actions. It will be easy for all of these actions to be controlled.

The relationship between those entities is customer to transaction 1:M a customer can make many transactions. Transaction to categories M:1 each transaction has one category, but categories can cover many transactions. Transaction to logs 1:M a transaction can have many logs. These ensures proper cardinality and reduce redundancy 

Overall, the design balances simplicity with flexibility, supporting accurate queries, future growth, and reliable auditing

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

## PDF
[ERD DESIGN EXPLANATION.pdf](https://github.com/user-attachments/files/22435026/ERD.DESIGN.EXPLANATION.pdf)

