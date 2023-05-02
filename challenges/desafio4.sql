SELECT 
    user_name AS pessoa_usuaria,
    CASE
        WHEN YEAR(MAX(last_played.reproduction_date)) >= 2021 THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM
    user
        INNER JOIN
    last_played ON user.user_id = last_played.user_id
GROUP BY user.user_name
HAVING MAX(last_played.reproduction_date) IS NOT NULL
ORDER BY user.user_name ASC;
