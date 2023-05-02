SELECT 
    u.user_name AS pessoa_usuaria,
    COUNT(m.music_id) AS musicas_ouvidas,
    ROUND(SUM(m.duration_seconds) / 60, 2) AS total_minutos
FROM
    user AS u
        INNER JOIN
    music AS m
        INNER JOIN
    last_played AS l ON u.user_id = l.user_id
        AND m.music_id = l.music_id
GROUP BY u.user_name
ORDER BY u.user_name ASC;
