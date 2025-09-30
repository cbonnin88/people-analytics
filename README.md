
<img width="600" height="600" alt="ConnectSphere" src="https://github.com/user-attachments/assets/dd3f9f1b-53b2-47d9-a296-d3bfbb6360d6" />

# 🏢 Enhancing Talent Strategy at "ConnectSphere"
ConnectSphere is a mid-sized technology company with offices in Paris, London, and Copenhagen. The company is facing two critical challenges: a recent increase in employee attrition and an inconsistent, often biased, process for determining salaries for new hires.

As a newly hired People Analyst, I was tasked with leveraging the company's data to address these issues, turning raw information into actionable strategic insights.

# 🎯 Key Objectives
1. Analyze and Understand Attrition: Identify the key drivers of employee turnover. Which departments, locations, or job levels are most at risk?
2. Optimize Compensation Strategy: Ensure the company's salary structure is fair, competitive, and data-driven by establishing clear salary bands.
3. Build Predictive Tools: Develop machine learning models to proactively identify employees at risk of leaving and to provide fair, unbiased salary estimates for new candidates.

# 🛠️ Tech Stack & Skills Demonstrated
This project showcases a full range of data analytics skills, from data warehousing to machine learning and interactive dashboarding.

- Cloud & Data Warehouse: Google Cloud Platform (GCP), Google BigQuery

- Data Analysis & Manipulation: Python (with Polars)

- Data Visualization: Plotly

- Business Intelligence Dashboard: Google Looker Studio

- Machine Learning: Scikit-learn (Random Forest for Classification, Gradient Boosting for Regression)

- Interactive Web Application: Streamlit

# 📂 Project Phases
The project was executed in four distinct phases, mimicking a real-world analytics workflow.

### Phase 1: Data Generation & Warehousing
A realistic, synthetic dataset was generated using a Python script with the Faker and Polars libraries. The dataset includes detailed employee information, job roles, salary histories, and performance scores, complete with country-specific names.

The data was structured into four separate tables (employees, job_roles, salaries, performance) and uploaded to Google BigQuery to serve as the project's data warehouse.

Foundational business questions were answered using advanced SQL queries, practicing JOINs, CTEs, and Window Functions.

### Phase 2: Exploratory Data Analysis (EDA) & Visualization
A Google Colab notebook was connected to BigQuery to pull the master dataset.

In-depth EDA was performed using Polars to analyze attrition rates, compare salary distributions, and investigate correlations between performance, satisfaction, and churn.

Interactive visualizations were created with Plotly, including sunburst charts to show company structure and scatter plots to identify trends.

### Phase 3: Predictive Modeling
Two key machine learning models were developed using Scikit-learn:

Attrition Prediction Model: A Random Forest Classifier was trained to predict the probability of an employee leaving the company based on their tenure, performance, role, and satisfaction.

Salary Prediction Model: A Gradient Boosting Regressor was trained to provide unbiased salary estimates for new hires based on their job title, level, and location.

### Phase 4: BI Dashboarding & Interactive Web Application
The insights and models were made accessible to non-technical users through two deliverables:

1. [Looker Studio Dashboard](https://lookerstudio.google.com/reporting/6b025333-dbf2-4624-b178-053317cb4242): A high-level, strategic dashboard was created for the CHRO to monitor key metrics like overall headcount, attrition rates by department, and workforce distribution.

2. Streamlit Web App: An interactive "HR Toolkit" was built, allowing HR managers to:

 - Get instant, data-driven salary predictions for new roles.

 - Input an employee's details to receive a real-time attrition risk score.

# 💡 Key Outcomes & Deliverables
- A Centralized Data Warehouse in Google BigQuery serving as the single source of truth for all people data.

- A Strategic BI Dashboard in Looker Studio for executive-level monitoring of workforce health.

- An Interactive HR Toolkit built with Streamlit that embeds machine learning models to aid in day-to-day decision-making, promoting fair pay and proactive employee retention.


