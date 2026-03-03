⚽ EURO 2024 SQL Analytics Project

PostgreSQL (Supabase) | Database Design | Advanced SQL | Sports Analytics

📌 Project Overview

This project is an end-to-end SQL analytics build using real event-level data from the UEFA EURO 2024 tournament. The goal was to design and implement a relational database from raw CSV files and apply advanced SQL techniques to generate meaningful performance insights.

The project was structured in four phases:

Database Design & Creation

Analytical Query Development

Stored Procedures

Advanced Queries & Final Reporting

The final deliverable includes a custom “Player of the Tournament” performance model built entirely in SQL.

🛠 Tech Stack

PostgreSQL (Supabase)

SQL (CTEs, Window Functions, Aggregations, CASE statements)

Foreign Keys & Constraints

Stored Procedures (PL/pgSQL)

CSV Data Loading

📂 Database Schema

The database was built from scratch using relational modeling principles.

Tables Created
team

team_id (Primary Key)

name

total_xg (float, updated via stored procedure)

player

player_id (Primary Key)

name

position

team_id (Foreign Key)

match_event

id (Primary Key)

match_id

team_id (Foreign Key)

player_id (Foreign Key)

timestamp

period

minute

second

location

pass_end_location

pass_outcome

shot_outcome

shot_statsbomb_xg

type

Key Features

Proper foreign key relationships

Table constraints

Schema normalization

Indexed relationships for performance

📊 Analytical Queries

The project progressively builds analytical complexity:

🔹 Basic Queries

Retrieve players by team

Filter high xG events (> 0.25)

Extract player positions and event metadata

🔹 Aggregations

Total goals scored in tournament

Player with most goals

Team with highest cumulative xG

🔹 JOIN Operations

Event logs with team names

Player-level xG totals with team context

🔹 Subqueries & CTEs

Identify players scoring above tournament average

🔹 Window Functions

Running total of xG within a specific match

⚙️ Stored Procedures

A stored procedure was implemented to:

Insert a new match_event

Automatically update the corresponding team’s total_xg

This demonstrates:

Transaction logic

Procedural SQL (PL/pgSQL)

Automated metric updates

🏆 Final Project: Player of the Tournament Model

The final phase builds a performance rating model entirely in SQL.

Metrics Included:

Total Goals (SUM)

Total xG (SUM)

Pass Accuracy (successful pass = NULL pass_outcome)

Custom rating using CASE logic

The final query includes:

JOIN

CTE

Aggregations

GROUP BY

HAVING

CASE statements

Final Output Columns:

Player Name

Team Name

Position

Total Goals

Pass Accuracy

Total xG

Final Rating

This simulates a real performance analytics workflow used in professional football environments.

🎯 Skills Demonstrated

Relational database modeling

Schema normalization

Data ingestion via CSV

Advanced SQL querying

Window functions

CTEs & subqueries

Stored procedures

Performance metric design

Sports analytics modeling

🚀 How to Run (Supabase)

Create a new Supabase project.

Run schema files in /schema/.

Load CSV data into tables.

Execute queries in /queries/.

Run the final analysis query in /queries/99_final_analysis/.

📈 Why This Project Matters

This project mirrors real-world sports analytics workflows:

Raw event data → structured database

Structured database → analytical queries

Analytical queries → performance metrics

Performance metrics → decision-making model

It demonstrates both data engineering fundamentals and applied sports performance analytics using SQL.
