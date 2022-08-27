SELECT 
 MUSICA.name_music AS cancao,
 COUNT(HISTORI.music_id) AS reproducoes
FROM SpotifyClone.musicTable AS MUSICA
INNER JOIN SpotifyClone.reproductionHistoryTable As HISTORI 
  ON HISTORI.music_id = MUSICA.music_id 
  GROUP BY MUSICA.music_id
  ORDER BY COUNT(music_id) desc, MUSICA.name_music
  LIMIT 2;