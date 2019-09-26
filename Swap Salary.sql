"""
SQL Schema

Given a table salary, such as the one below, that has m=male and f=female values. 
Swap all f and m values (i.e., change all f values to m and vice versa) with a single 
update statement and no intermediate temp table.

Note that you must write a single update statement, DO NOT write any select statement for this problem.

Example:

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | m   | 2500   |
| 2  | B    | f   | 1500   |
| 3  | C    | m   | 5500   |
| 4  | D    | f   | 500    |

After running your update statement, the above salary table should have the following rows:

| id | name | sex | salary |
|----|------|-----|--------|
| 1  | A    | f   | 2500   |
| 2  | B    | m   | 1500   |
| 3  | C    | f   | 5500   |
| 4  | D    | m   | 500    |

Solution:
	learn how to use UPDATE clause
	learn how to use CASE WHEN THEN ELSE END clause
"""

UPDATE salary
SET sex = 
	CASE
		WHEN sex = 'm' THEN 'f'
		ELSE 'm'
	END