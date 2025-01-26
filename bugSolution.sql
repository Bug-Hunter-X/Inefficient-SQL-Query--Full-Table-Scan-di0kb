```sql
CREATE INDEX idx_department_salary ON employees (department_id, salary);

-- Optimized query using the index
SELECT * FROM employees WHERE department_id = 10 AND salary >= 100000;
```
This solution adds a composite index on `department_id` and `salary`. The database can now efficiently use the index to locate rows matching the specified criteria.