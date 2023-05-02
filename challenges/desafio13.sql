SELECT 
    CASE
        WHEN user.age <= 30 THEN 'Até 30 anos'
        WHEN user.age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
        WHEN user.age > 60 THEN 'Maior de 60 anos'
    END AS faixa_etaria,
    COUNT(DISTINCT (user.user_id)) AS total_pessoas_usuarias,
    COUNT(user.user_id = favorite_music.user_id) AS total_favoritadas
FROM
    favorite_music
        RIGHT JOIN
    user ON user.user_id = favorite_music.user_id
GROUP BY faixa_etaria
