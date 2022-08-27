SELECT
  USUARIO.name_user AS usuario,
  COUNT(HISTORICO.user_id) AS qt_de_musicas_ouvidas,
  CAST(SUM(MUSICA.duration)/60 AS DECIMAL(5,2)) AS total_minutos
FROM SpotifyClone.userTable AS USUARIO
INNER JOIN SpotifyClone.reproductionHistoryTable AS HISTORICO 
  ON HISTORICO.user_id = USUARIO.user_id
INNER JOIN SpotifyClone.musicTable AS MUSICA
  ON HISTORICO.music_id  = MUSICA.music_id
GROUP BY HISTORICO.user_id
ORDER BY USUARIO.name_user;  