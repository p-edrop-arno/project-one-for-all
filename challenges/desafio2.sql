SELECT 
    a.cancoes, b.artistas, c.albuns
FROM
    (SELECT 
        COUNT(music_id) AS cancoes
    FROM
        SpotifyClone.music) a
        INNER JOIN
    (SELECT 
        COUNT(artist_id) AS artistas
    FROM
        SpotifyClone.artist) b
        INNER JOIN
    (SELECT 
        COUNT(album_id) AS albuns
    FROM
        SpotifyClone.album) c;
