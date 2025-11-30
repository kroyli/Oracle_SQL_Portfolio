-- Вызов процедуры для формирования отчёта
BEGIN
  report_util.generate_monthly_report('2025-11');
END;
/
