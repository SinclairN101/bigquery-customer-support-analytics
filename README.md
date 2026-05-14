# Analytics Engineering Project

Customer support analytics warehouse built using dbt, BigQuery, GitHub, and Looker Studio.

This project demonstrates a modern analytics engineering workflow including:

* data modeling
* dimensional warehouse design
* dbt transformations
* testing and documentation
* production deployments
* dashboard reporting

---

# Project Architecture

```text id="’wini936"
RAW → STAGING → INTERMEDIATE → DIMENSIONS / FACTS → LOOKER STUDIO
```

---

# Tech Stack

| Tool          | Purpose                         |
| ------------- | ------------------------------- |
| dbt           | Data transformations & modeling |
| BigQuery      | Cloud data warehouse            |
| GitHub        | Version control                 |
| dbt Cloud     | Deployment & orchestration      |
| Looker Studio | Dashboard & reporting           |
| SQL           | Data transformation language    |

---

# Data Modeling

This project follows a dimensional modeling approach using:

* fact tables
* dimension tables
* surrogate keys
* star schema principles

Example relationship:

```text id="’wini944"
DIM_Customer.customer_key
        ↓
FCT_Tickets.customer_key
```

---

# dbt Features Used

* incremental models
* schema tests
* documentation blocks
* model references
* environment separation
* materializations
* surrogate keys
* tags
* persist_docs

---

# Dashboard

Customer Support Performance Dashboard built in Looker Studio.

Dashboard Features:

* ticket volume tracking
* support performance KPIs
* customer satisfaction metrics
* operational trend analysis
* channel and priority breakdowns

Live Dashboard:

[Customer Support Performance Dashboard](https://datastudio.google.com/reporting/0dd558c1-5e22-4a94-9223-459b955ebb61?utm_source=chatgpt.com)

---

# Example KPIs

* Total Tickets
* Open Tickets
* Closed Tickets
* Average First Response Time
* Average Resolution Time
* Customer Satisfaction Score

---

# Example Charts

* Tickets Over Time
* Tickets by Channel
* Tickets by Priority
* Average Satisfaction by Ticket Type
* Top Customers by Ticket Volume

---

# Development Workflow

```text id="’wini945"
1. Create feature branch
2. Build dbt model
3. Test locally
4. Commit changes
5. Push to GitHub
6. Deploy through dbt Cloud
7. Validate in BigQuery
8. Surface in Looker Studio
```

---

# Future Improvements as I learn

* additional dimensions
* snapshot models
* source freshness monitoring
* CI/CD workflows
* advanced testing
* semantic layer enhancements
* partitioned incremental facts

---

# Author

Nathan Sinclair

Analytics Engineering Portfolio Project
