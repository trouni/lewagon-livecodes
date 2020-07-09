-- List all customers (name + email), ordered alphabetically (no extra information)
SELECT first_name, last_name, email FROM customers ORDER BY last_name ASC

-- List tracks (Name + Composer) of the Classical playlist
SELECT t.name, t.composer
FROM tracks t
JOIN playlist_tracks pt ON pt.track_id = t.id
JOIN playlists p ON pt.playlist_id = p.id
WHERE p.name = 'Classical'

-- List the 10 artists mostly listed in all playlists
SELECT artists.name, COUNT(*) c 
FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
GROUP BY artists.name
ORDER BY c DESC
LIMIT 10

-- List the tracks which have been purchased at least twice, ordered by number of purchases
SELECT tracks.id, tracks.name, COUNT(*) AS c
FROM tracks
JOIN invoice_lines ON tracks.id = invoice_lines.track_id
GROUP BY tracks.id
HAVING c >= 2
ORDER BY c DESC