USE SpotifyClone;
DROP TABLE IF EXISTS favorite_music;

CREATE TABLE SpotifyClone.favorite_music(
    user_id INT,
    music_id INT,
    PRIMARY KEY (user_id, music_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (music_id) REFERENCES music(music_id)
    ) engine = InnoDB;

   INSERT INTO SpotifyClone.favorite_music (user_id, music_id) VALUES
    (1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 7),
	(4, 4),
	(5, 10),
	(5, 2),
	(8, 4),
	(9, 7),
	(10, 3);
