SELECT 
    COUNT(*) AS musicas_no_historico
FROM
    last_played
WHERE
    user_id = (SELECT 
            user_id
        FROM
            user
        WHERE
            user_name = 'Barbara Liskov');
