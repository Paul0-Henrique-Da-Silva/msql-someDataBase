SELECT 
ARTISTA.name_artist AS artista,
ALBUM.name_album AS album
FROM SpotifyClone.albumTable AS ALBUM
INNER JOIN SpotifyClone.artistTable AS ARTISTA 
 ON ARTISTA.artist_id = ALBUM.artist_id
 WHERE ARTISTA.name_artist = 'Elis Regina';