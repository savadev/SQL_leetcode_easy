"""
SQL Schema

Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+

For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
Note: All emails are in lowercase.

Solution:
	use COUNT
	But why can't I use WITH AS????
"""

SELECT Email
FROM
(
	SELECT Email, COUNT(Id) AS num
	FROM Person
	GROUP BY Email
) AS stat
WHERE num > 1