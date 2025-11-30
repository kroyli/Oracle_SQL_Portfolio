# Oracle SQL / PL/SQL Portfolio – Database Module for Internal Reporting

## Project Description
This demo project demonstrates skills in working with Oracle Database 19c and PL/SQL.  
A database module for internal reporting was created with automated monthly report generation and a view displaying user statistics.

## Technologies
- Oracle Database 19c XE
- SQL / PL/SQL
- Oracle SQL Developer

## Project Structure

```
Oracle_SQL_Portfolio/
 ├─ create_tables.sql       # Creates tables (users, orders, reports_archive)
 ├─ insert_data.sql         # Inserts test data with COMMIT
 ├─ report_package.sql      # Creates PL/SQL package for report generation
 ├─ generate_report.sql     # Calls procedure to generate report
 ├─ create_view.sql         # Creates a View with user order statistics
 └─ check_data.sql          # SELECT queries for data verification
```

## Functionality

1. **Tables**
   - `users` – stores user information
   - `orders` – stores order information
   - `reports_archive` – stores monthly report data

2. **PL/SQL Package**
   - Package `report_util` contains procedure `generate_monthly_report(p_month IN VARCHAR2)`
   - The procedure automatically counts users for a given month and stores the result in `reports_archive`

3. **View**
   - `v_monthly_user_stats` shows the number of orders and total amount per user

4. **Data Verification**
   - `check_data.sql` allows you to check the contents of tables and the view

## How to Run

1. Open SQL Developer and connect to the `XE_demo` database
2. Execute scripts in the following order:
   - `create_tables.sql`
   - `insert_data.sql`
   - `report_package.sql`
   - `generate_report.sql`
   - `create_view.sql`
3. Run `check_data.sql` to verify the results

---

The project is ready to be demonstrated and uploaded to GitHub.
