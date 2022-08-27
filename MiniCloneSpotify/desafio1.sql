DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
  CREATE TABLE planTable(
      plan_id INT AUTO_INCREMENT PRIMARY KEY,
      plan VARCHAR(200) NOT NULL,
      plan_value VARCHAR(14) NOT NULL
  );
  
  CREATE TABLE userTable(
      user_id INT AUTO_INCREMENT PRIMARY KEY,
      name_user VARCHAR(30),
      age VARCHAR(89),
      plan_id INT NOT NULL,
      FOREIGN KEY (plan_id) REFERENCES planTable(plan_id)
      );

  CREATE TABLE artistTable(
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name_artist VARCHAR(50) NOT NULL
    );

  CREATE TABLE albumTable(
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    name_album VARCHAR(100) NOT NULL,
    artist_id INT,
    years INT,
    FOREIGN KEY (artist_id) REFERENCES artistTable(artist_id)
    );
    
   CREATE TABLE musicTable(
     music_id INT AUTO_INCREMENT PRIMARY KEY,
     name_music VARCHAR(40) NOT NULL,
     album_id INT,
     duration VARCHAR(7) NOT NULL,
     FOREIGN KEY (album_id) REFERENCES albumTable(album_id)
     ); 
    
   CREATE TABLE followingTable(
    user_id INT,
    artist_id INT,
    CONSTRAINT PRIMARY KEY (user_id, artist_id),
    FOREIGN KEY (user_id) REFERENCES userTable(user_id),
    FOREIGN KEY (artist_id) REFERENCES artistTable(artist_id)
    );
   
   CREATE TABLE reproductionHistoryTable(
    user_id INT,
    music_id INT,
    date_player VARCHAR(22),
    CONSTRAINT PRIMARY KEY (user_id, music_id),
    FOREIGN KEY (user_id) REFERENCES userTable(user_id),
    FOREIGN KEY (music_id) REFERENCES musicTable(music_id)
    );
    
INSERT INTO planTable
 (plan_id, plan, plan_value)
VALUES
 (1, 'gratuito',0),
 (2, 'familiar', 7.99),
 (3, 'universitário', 5.99),
 (4, 'pessoal', 6.99);
 
INSERT INTO userTable
 ( name_user, age, plan_id)
 VALUES
  ('Barbara Liskov', 82, 1),
	('Robert Cecil Martin', 58, 1),
	('Ada Lovelace', 37, 2),
	('Martin Fowler', 46, 2),
	('Sandi Metz', 58, 2),
	('Paulo Freire', 19, 3),
	('Bell Hooks', 26, 3),
	('Christopher Alexander', 85, 4),
	('Judith Butler', 45, 4),
	('Jorge Amado', 58, 4);

INSERT INTO artistTable 
 (name_artist)
VALUES
	('Beyoncé'),
	('Queen'),
	('Elis Regina'),
	('Baco Exu do Blues'),
	('Blind Guardian'),
	('Nina Simone');

INSERT INTO albumTable
 (name_album, artist_id, years)
VALUES
  ('Renaissance', 1, '2022'),
	('Jazz', 2, '1978'),
	('Hot Space', 2, '1982'),
	('Falso Brilhante', 3, '1998'),
	('Vento de Maio', 3, '2001'),
	('QVVJFA?', 4, '2003'),
	('Somewhere Far Beyond', 5, '2007'),
	('I Put A Spell On You', 6, '2012');
 
INSERT INTO musicTable
 (name_music, duration, album_id) 
 VALUES
  ('BREAK MY SOUL', 279, 1),
	('VIRGO’S GROOVE', 369, 1),
	('ALIEN SUPERSTAR', 116, 1),
	('Don’t Stop Me Now', 203, 2),
	('Under Pressure', 152, 3),
	('Como Nossos Pais', 105, 4),
	('O Medo de Amar é o Medo de Ser Livre', 207, 5),
	('Samba em Paris', 267, 6),
	('The Bard’s Song', 244, 7),
	('Feeling Good', 100, 8);
  
INSERT INTO followingTable 
 ( user_id, artist_id)  
VALUES
  (1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(4, 4),
	(5, 5),
	(5, 6),
	(6, 6),
	(6, 1),
	(7, 6),
	(9, 3),
	(10, 2);
 
INSERT INTO reproductionHistoryTable 
 (user_id, music_id, date_player)
VALUES 
  (1, 8, '2022-02-28 10:45:55'), 
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'), 
  (3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'), 
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'), 
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22'); 