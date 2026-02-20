# 🎬 Netflix-Style Data Classification Project

## 📌 Project Overview
This project demonstrates the use of **Advanced SQL CASE WHEN logic** to transform raw streaming data into actionable business categories. This simulates a real-world Data Engineering task where transactional and behavioral data must be classified for reporting and analytics.

## 🛠️ Key SQL Solutions
1. **User Tiering:** Categorized users into 'Premium', 'Regular', and 'Basic' based on total payment volume.
2. **Plan Classification:** Segmented subscription plans by price point to identify market positioning.
3. **Engagement Metrics:** Classified user activity levels (Highly Active to Less Active) by counting watch history records.
4. **Content Popularity:** Developed a 'Blockbuster' vs. 'Popular' index based on total view counts.
5. **Financial Integrity:** Categorized spending while filtering for 'SUCCESS' status to ensure accurate reporting.

## 💡 Technical Deep Dive (Learning Diary)
* **SQL Order of Execution:** Demonstrated why aliases defined in `SELECT` cannot be referenced in a `CASE` statement within the same query.
* **Handling the "NULL Factor":** Implemented logic to prevent `NOT IN` clauses from returning empty results when encountering `NULL` values.
* **Boundary Management:** Used `>=` and `BETWEEN` to ensure no data gaps for decimal values.

## 📊 Database Schema (Context)
Based on the provided ER diagram, the analysis uses the following tables:
- `users`: Basic user information.
- `payments`: Transaction history including amount and status.
- `subscription_plans`: Plan pricing and features.
- `watch_history`: User viewing patterns.
