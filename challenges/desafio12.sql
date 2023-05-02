SELECT 
    a.artist_name AS artista,
    CASE
        WHEN COUNT(al.artist_id) >= 5 THEN 'A'
        WHEN COUNT(al.artist_id) BETWEEN 3 AND 4 THEN 'B'
        WHEN COUNT(al.artist_id) BETWEEN 1 AND 2 THEN 'C'
        ELSE '-'
    END AS ranking
FROM
    favorite_music AS fm
        LEFT JOIN
    music AS m ON m.music_id = fm.music_id
        LEFT JOIN
    album AS al ON al.album_id = m.album_id
        RIGHT JOIN
    artist AS a ON a.artist_id = al.artist_id
GROUP BY artista
ORDER BY COUNT(a.artist_id) DESC , artista ASC;
