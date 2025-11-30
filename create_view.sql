-- Создание представления с информацией о заказах пользователей
CREATE OR REPLACE VIEW v_monthly_user_stats AS
SELECT u.name, COUNT(o.order_id) AS orders_count, SUM(o.amount) AS total_amount
FROM users u
LEFT JOIN orders o ON u.user_id = o.user_id
GROUP BY u.name;
