SELECT COUNT(MUSICA.music_id) AS cancoes,
COUNT(DISTINCT ARTISTA.artist_id) AS artistas,
COUNT(DISTINCT ALBUM.album_id) AS albuns
FROM SpotifyClone.albumTable AS ALBUM
INNER JOIN SpotifyClone.artistTable AS ARTISTA
ON ALBUM.artist_id = ARTISTA.artist_id 
INNER JOIN SpotifyClone.musicTable AS MUSICA
ON ALBUM.album_id = MUSICA.album_id;