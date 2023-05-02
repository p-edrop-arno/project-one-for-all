SELECT 
    music_title AS cancao,
    COUNT(last_played.music_id) AS reproducoes
FROM
    last_played
        INNER JOIN
    music ON last_played.music_id = music.music_id
GROUP BY music.music_id
ORDER BY reproducoes DESC , music_title ASC
LIMIT 2;
