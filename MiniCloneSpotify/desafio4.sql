SELECT 
 USUARIO.name_user AS usuario,
  IF(YEAR(MAX(DATE(HISTORICO.date_player))) >= 2021, 'Usuário ativo', 'Usuário inativo')
  AS status_usuario
FROM SpotifyClone.userTable AS USUARIO
INNER JOIN SpotifyClone.reproductionHistoryTable AS HISTORICO  
 ON HISTORICO.user_id = USUARIO.user_id
GROUP BY USUARIO.user_id
ORDER BY USUARIO.name_user; 