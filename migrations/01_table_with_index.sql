create table table_with_index
(
    id         int auto_increment
        primary key,
    type       varchar(100)  not null,
    priority   int default 0 not null,
    created_at datetime      not null
)
    collate = utf8mb4_unicode_ci;


CREATE INDEX type_priority_created_at on table_with_index (type, priority desc, created_at);

INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (1, 'history', 10, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (2, 'history', 0, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (3, 'history', 200, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (4, 'history', 200, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (5, 'wanted', 200, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (6, 'history', 88, '2020-08-21 13:02:55');
INSERT INTO table_with_index (id, type, priority, created_at)
VALUES (7, 'history', 33, '2020-08-21 13:02:55');
