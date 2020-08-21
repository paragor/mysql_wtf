чтобы воспроизвести баг:
* запусти докер: 
```bash
docker-compose up
```
* посмотри на результаты этих двух запросов
```sql
SELECT priority
FROM table_with_index
WHERE (
        (priority BETWEEN 0 AND 100)
        OR
        (priority BETWEEN 200 AND 299)
    )
  and type = 'history'
ORDER BY priority DESC;
```
result:
| priority |
| :--- |
| 99 |
| 88 |
| 33 |
| 25 |
| 10 |
| 0 |
| 200 |
| 200 |


```sql
SELECT priority
FROM table_without_index
WHERE (
        (priority BETWEEN 0 AND 99)
        OR
        (priority BETWEEN 200 AND 299)
    )
  and type = 'history'
ORDER BY priority DESC;

```
result:
| priority |
| :--- |
| 200 |
| 200 |
| 99 |
| 88 |
| 33 |
| 25 |
| 10 |
| 0 |


чтобы обнулить базу:
```bash
docker-compose stop
rm -rf ./data
```
