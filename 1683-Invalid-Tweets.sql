-- Write your PostgreSQL query statement below
SELECT tweet_id from tweets where OCTET_LENGTH(content) > 15