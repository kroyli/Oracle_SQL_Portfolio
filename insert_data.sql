-- Вставка тестовых данных
INSERT INTO users(name) VALUES('Olga');
INSERT INTO users(name) VALUES('Ivan');

INSERT INTO orders(user_id, amount) VALUES(1, 100);
INSERT INTO orders(user_id, amount) VALUES(1, 150);
INSERT INTO orders(user_id, amount) VALUES(2, 200);

-- Подтверждаем изменения
COMMIT;
