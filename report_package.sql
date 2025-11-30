-- Создание пакета для генерации отчётов
CREATE OR REPLACE PACKAGE report_util AS
  PROCEDURE generate_monthly_report(p_month IN VARCHAR2);
END report_util;
/

CREATE OR REPLACE PACKAGE BODY report_util AS
  PROCEDURE generate_monthly_report(p_month IN VARCHAR2) IS
  BEGIN
    INSERT INTO reports_archive (report_month, total_users)
    SELECT p_month, COUNT(*) 
    FROM users
    WHERE TO_CHAR(created_date,'YYYY-MM') = p_month;
  END;
END report_util;
/
