# Netflix Data Analysis with dbt & Snowflake

A modern data transformation project built using **dbt (Data Build Tool)** and **Snowflake** to analyze the Netflix dataset. This project demonstrates how to build modular, testable, and documented data pipelines using dbt best practices.

---

## Project Overview

The project transforms raw Netflix data into clean analytical models using the dbt workflow.

The pipeline includes:

- Loading raw Netflix dataset into Snowflake
- Creating staging models
- Cleaning and standardizing data
- Building dimensional and fact models
- Writing reusable SQL transformations
- Implementing data quality tests
- Generating project documentation
- Creating analytical models for business insights

---

## Architecture

```
Raw Netflix Data
        │
        ▼
   Snowflake Raw Tables
        │
        ▼
   dbt Staging Models
        │
        ▼
 Intermediate Models
        │
        ▼
 Mart Models
        │
        ▼
 Analytics & Reporting
```

---

## Tech Stack

- **dbt Core**
- **Snowflake**
- **SQL**

---

## Project Structure

```
netflix/
│
├── models/
│   ├── staging/
│   ├── intermediate/
│   └── marts/
│
├── macros/
│
├── tests/
│
├── snapshots/
│
├── seeds/
│
├── analyses/
│
├── dbt_project.yml
└── packages.yml
```

---

## Data Pipeline

### Stage Layer

- Cleans raw Netflix data
- Standardizes column names
- Handles null values
- Performs type casting

### Intermediate Layer

- Applies business logic
- Creates reusable transformation models
- Normalizes data

### Mart Layer

Builds final analytical models including:

- Movies vs TV Shows
- Content by Country
- Content by Rating
- Release Trends
- Genre Analysis
- Director Analysis

---

## Data Quality Tests

This project includes dbt tests such as:

- Unique key validation
- Not Null tests
- Accepted Values
- Relationship tests
- Source freshness (if configured)

Run tests:

```bash
dbt test
```

---

## Getting Started

### Clone Repository

```bash
git clone https://github.com/<your-username>/netflix-dbt-analysis.git
```

### Install Dependencies

```bash
dbt deps
```

### Run Models

```bash
dbt run
```

### Run Tests

```bash
dbt test
```

### Generate Documentation

```bash
dbt docs generate
```

Serve documentation locally:

```bash
dbt docs serve
```

---

## Example Insights

The project enables analysis such as:

- Distribution of Movies vs TV Shows
- Most common content ratings
- Content growth over time
- Top producing countries
- Most frequent directors
- Genre popularity
- Release year trends

---

## Sample dbt Lineage

After running:

```bash
dbt docs generate
dbt docs serve
```

You can explore:

- Model Lineage
- Dependencies
- Column Documentation
- Data Tests

<img width="1421" height="756" alt="Screenshot 2026-06-28 at 2 47 04 PM" src="https://github.com/user-attachments/assets/5f10201e-8604-494e-9e2e-6d7b1bafe255" />

---

## Skills Demonstrated

- Data Modeling
- SQL Transformations
- Modular Analytics Engineering
- dbt Best Practices
- Snowflake
- Data Quality Testing
- Documentation
- Git Version Control

---
