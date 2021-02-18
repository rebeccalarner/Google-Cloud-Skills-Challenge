SELECT LOWER(word) AS word, sum(word_count) AS count
FROM `bigquery-public-data.samples.shakespeare`
GROUP BY word ORDER BY count DESC LIMIT 10
