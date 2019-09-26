"""
SQL Schema

Given a Weather table, write a SQL query to find all dates' Ids with higher temperature 
compared to its previous (yesterday's) dates.

+---------+------------------+------------------+
| Id(INT) | RecordDate(DATE) | Temperature(INT) |
+---------+------------------+------------------+
|       1 |       2015-01-01 |               10 |
|       2 |       2015-01-02 |               25 |
|       3 |       2015-01-03 |               20 |
|       4 |       2015-01-04 |               30 |
+---------+------------------+------------------+

For example, return the following Ids for the above Weather table:

+----+
| Id |
+----+
|  2 |
|  4 |
+----+

Solution:
	join on DATEDIFF
	LAG()? too complicate
"""

SELECT a.Id as Id
FROM Weather AS a
JOIN Weather AS b
	ON DATEDIFF(a.RecordDate, b.RecordDate) = 1
	AND a.Temperature > b.Temperature


SELECT Id
FROM Weather
WHERE DATEDIFF(
	RecordDate,
	LAG(RecordDate, 1)
		OVER(
			ORDER BY RecordDate)
) = 1 AND ...???
