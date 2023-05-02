SELECT 
    artist_name AS artista, album_title AS album
FROM
    artist AS a
        INNER JOIN
    album AS al ON a.artist_id = al.artist_id
WHERE
    a.artist_name = 'Elis Regina'
ORDER BY al.album_title ASC;
