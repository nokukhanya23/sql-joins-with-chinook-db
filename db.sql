
SELECT count(*) FROM artists

SELECT * FROM playlists WHERE Name LIKE "a%"

SELECT * FROM albums WHERE ArtistId = 240

SELECT * FROM artists


SELECT * from artists WHERE Name = "Lost"
-- ri

-- fnd all the albms fo a gven artst
SELECT AlbumId, Name,  Title FROM artists
JOIN albums on artists.ArtistId = albums.ArtistId
WHERE artists.ArtistId = 17;
-- WHERE 

-- fnd all the albms hee the name = "Amy Wnehose"

SELECT * FROM artists WHERE Name = "Amy Winehouse"


SELECT * FROM Genres
JOIN tracks on genres.GenreId = tracks.GenreId
WHERE Genres.Name = "Pop";



-- -------------------------------------------

SELECT * FROM playlists
JOIN playlist_track on playlist_track.PlaylistId = playlists.PlaylistId

JOIN tracks 
    on playlist_track.TrackId = tracks.TrackId

WHERE playlists.Name = "Classical"



--find all the artists for a given genre
select DISTINCT artists.Name from genres
join tracks on tracks. GenreId = genres. GenreId
join albums on albums.AlbumId = tracks.AlbumId
join artists on artists.ArtistId = albums.ArtistId
where genres.Name = "Rock";

--find the playlist with the most / least songs (will need a group by

SELECT playlists.Name, count(*) as SongCount from playlists
join playlist_track
on playlists.PlaylistsId = playlist_track.playlistId
group by playlists.Name
order by SongCount DESC
limit 1 ;

select playlists.Name, Count(*) from playlists
join playlist_track
on playlists.PlaylistId = playlist_track.PlaylistId
group by playlists.Name
order by count(*) ASC
limit 1 ;

-- Find the total for a given invoice (will need a sum)

select * from invoices where invoice.InvoiceId = 17 ;
-- find the biggest/smallest invoice amounts

select InvoiceId, Min(Total) from invoices;
select InvoiceId, Max(Total) from invoices;

--Find the artists with the most/least songs


SELECT
--count(DISTINCT artists.Name)
--artists.Name
artists.Name, count(*) as TrackCount
from artists
join albums on albums.ArtistId = artists.ArtistId
join tracks on tracks.AlbumId = albums.AlbumId
group by artists.Name
order by TrackCount DESC
-- order by TrackCount ASC
Limit 5
-- offset 5
;

-- where Genres.Name = "Rock";




