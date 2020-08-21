select sleep(10);

INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (8, 'history', 25, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (9, 'history', 99, '2020-08-21 13:02:55');

INSERT INTO table_without_index (id, type, priority, created_at)
VALUES (8, 'history', 25, '2020-08-21 13:02:55');
INSERT INTO table_without_index (id, type, priority, created_at)
VALUES (9, 'history', 99, '2020-08-21 13:02:55');
