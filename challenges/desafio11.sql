SELECT 
    album_title AS album, COUNT(*) AS favoritadas
FROM
    album AS al
        INNER JOIN
    music AS m ON al.album_id = m.album_id
        INNER JOIN
    favorite_music AS fm ON m.music_id = fm.music_id
GROUP BY al.album_id
ORDER BY COUNT(*) DESC , al.album_title ASC
LIMIT 3;
