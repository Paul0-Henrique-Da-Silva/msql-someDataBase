SELECT 
ARTISTA.name_artist AS artista,
ALBUM.name_album AS album,
COUNT(SEGUIDOR.artist_id) as seguidores
FROM SpotifyClone.albumTable AS ALBUM
INNER JOIN SpotifyClone.artistTable AS ARTISTA
 ON ARTISTA.artist_id = ALBUM.artist_id
INNER JOIN SpotifyClone.followingTable AS SEGUIDOR
 ON ARTISTA.artist_id = SEGUIDOR.artist_id
 GROUP BY ARTISTA.name_artist, ALBUM.name_album
 ORDER BY seguidores DESC, artista, album;