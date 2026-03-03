WITH xxx AS (
SELECT company_id,
        count(*) AS total
FROM 
    job_postings_fact
GROUP BY
    company_id)

SELECT 
    xxx.company_id,
    company_dim.name
FROM    xxx
JOIN company_dim
ON
    xxx.company_id=company_dim.company_id
;
