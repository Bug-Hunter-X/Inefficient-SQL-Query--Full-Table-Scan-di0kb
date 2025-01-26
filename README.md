# Inefficient SQL Query: Full Table Scan

This repository demonstrates a common SQL performance problem: using a query that leads to a full table scan when an index could significantly improve performance.

The `bug.sql` file contains an inefficient query that lacks indexing, resulting in slow execution times on large datasets.  The `bugSolution.sql` file demonstrates how to add an index to resolve this issue.

## Problem

The original query scans the entire `employees` table.  For large tables, this can be extremely slow. 

## Solution

The solution involves creating an index on the `department_id` and `salary` columns, allowing the database to efficiently locate the relevant rows without scanning the entire table.  Additionally, consider the choice of comparison operator (>, >=) for optimal query performance.
