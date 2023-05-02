SELECT 
    artist_name AS artista,
    album_title AS album,
    COUNT(DISTINCT user_id) AS pessoas_seguidoras
FROM
    artist AS a
        INNER JOIN
    album AS al ON a.artist_id = al.artist_id
        INNER JOIN
    follow_artist AS f ON a.artist_id = f.artist_id
GROUP BY a.artist_id , al.album_id
ORDER BY COUNT(DISTINCT f.user_id) DESC , a.artist_name ASC , al.album_title ASC;
