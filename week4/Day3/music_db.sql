CREATE TABLE artist (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

CREATE TABLE song_writer (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE song (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50),
song_writer_id INTEGER REFERENCES song_writer (id)
);

CREATE TABLE track (
id SERIAL NOT NULL PRIMARY KEY,
song_id INTEGER REFERENCES song (id),
song_writer_id INTEGER REFERENCES song_writer (id),
artist_id INTEGER REFERENCES artist (id)
);

CREATE TABLE album (
id SERIAL NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
release_date VARCHAR(50) NOT NULL,
track_id INTEGER REFERENCES track (id)
);

CREATE TABLE artist_to_track (
id SERIAL NOT NULL PRIMARY KEY,
track_id INTEGER REFERENCES track (id),
artist_id INTEGER REFERENCES artist (id)
);

--Here's what I used to insert my initial datat into the tables, though I had to go back and re-think
--the relationships.

-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 60);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 61);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 62);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 63);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 64);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 65);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 66);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 67);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 68);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Texas Flood', '1983', 69);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 70);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 71);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 72);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 73);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 74);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 75);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 76);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 77);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 78);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 79);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 80);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 81);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Abbey Road', '1969', 82);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 48);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 49);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 50);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 51);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 52);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 53);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 54);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 55);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 56);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 57);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 58);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Let it Be', '1970', 59);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 24);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 25);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 26);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 27);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 28);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 29);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 30);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 31);
-- INSERT INTO album (name, release_date, track_id) VALUES ('The Sky is Crying', '1991', 32);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 33);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 34);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 35);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 36);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 37);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 38);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 39);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 40);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 41);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 42);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 43);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 44);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 45);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 46);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Pauls Botique', '1989', 47);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 13);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 14);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 15);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 16);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 17);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 18);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 19);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 20);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 21);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Double Vision', '1977', 22);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 23);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 40);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 60);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 50);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 1);
-- INSERT INTO album (name, release_date, track_id) VALUES ('You Know You Want Some', 'Right Now', 12);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 1);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 2);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 3);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 4);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 5);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 6);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 7);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 8);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 9);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 10);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 11);
-- INSERT INTO album (name, release_date, track_id) VALUES ('Come Fly with Me', '1958', 12);

--
--
--select max(id) from track;

-- Questions
--
-- You will answer the following questions by writing SQL queries:

-- What are tracks for a given album?

SELECT song.name, track.id, album.name FROM album
	LEFT JOIN track ON album.track_id = track.id
	LEFT JOIN song ON track.song_id = song.id
	WHERE album.name = 'Double Vision'
	GROUP BY track.id, song.name, album.name;

-- What are the albums produced by a given artist?

SELECT DISTINCT(artist.name), album.name  FROM album
	LEFT JOIN track ON album.track_id = track.id
	LEFT JOIN artist_to_track ON artist_to_track.track_id = track.id
	LEFT JOIN artist ON artist_to_track.artist_id = artist.id
	WHERE artist.name = 'The Beastie Boys'
	GROUP BY artist.name, album.name;

-- What is the track with the longest duration? The answer it track 47, B-Boy Bouillabaisse
SELECT track.id AS track, song.name AS song, ROUND(song.length * 60) AS length_in_seconds FROM track
	JOIN song ON track.song_id = song.id
	GROUP BY track.id, song.name, song.length ORDER BY length_in_seconds DESC LIMIT 1;

-- What are the albums released in the 60s? 70s? 80s? 90s?

-- This selects albums from one of the decades.
SELECT DISTINCT(album.name), album.release_date FROM album
	WHERE album.release_date LIKE '%196%';

 -- This selects albums from all of the decades.
SELECT DISTINCT(album.name), album.release_date FROM album
	WHERE album.release_date LIKE '%196%' OR
	album.release_date LIKE '%197%' OR
	album.release_date LIKE '%198%' OR
	album.release_date LIKE '%199%';

-- How many albums did a given artist produce in the 90s?
SELECT artist.name AS artist, album.release_date, COUNT(DISTINCT(album.name)) AS number_of_albums FROM album
	JOIN artist ON album.artist_id = artist.id
	WHERE artist.name = 'Stevie Ray Vaughan' and album.release_date LIKE '%199%'
	GROUP BY artist.name, album.release_date
	ORDER BY number_of_albums DESC;


-- What is each artist's latest album?
-- This gives you  given artists latest album.
SELECT DISTINCT(artist.name) AS artist, album.release_date AS date FROM album
	JOIN artist ON album.artist_id = artist.id
	WHERE artist.name = 'Stevie Ray Vaughan'
	ORDER BY date DESC LIMIT 1;

-- List all albums along with its total duration based on summing the duration of its tracks.
SELECT album_name, SUM(album_length.song_length) AS length FROM (SELECT DISTINCT(album.name) AS album_name, song.name, ROUND(song.length * 60) AS song_length FROM track
	JOIN song ON track.song_id = song.id
	JOIN album ON album.track_id = track.id
	GROUP BY album.name, song.name, song.length) AS album_length
	GROUP BY album_length.album_name ORDER BY length DESC;

-- What is the album with the longest duration?
SELECT album_name, SUM(album_length.song_length) AS length FROM (SELECT DISTINCT(album.name) AS album_name, song.name, ROUND(song.length * 60) AS song_length FROM track
	JOIN song ON track.song_id = song.id
	JOIN album ON album.track_id = track.id
	GROUP BY album.name, song.name, song.length) AS album_length
	GROUP BY album_length.album_name ORDER BY length DESC LIMIT 1;

-- Who are the 5 most prolific artists based on the number of albums they have recorded?
-- The answer is Stevie Ray Vaughan, The Beetles, Foreigner, Frank Sinatra, The Beastie Boys.
SELECT artist.name AS artist, COUNT(DISTINCT(album.name)) AS number_of_albums FROM album
	JOIN artist ON album.artist_id = artist.id
	GROUP BY artist.name
	ORDER BY number_of_albums DESC;

-- What are all the tracks a given artist has recorded?
SELECT artist.name as artist, track.id AS track FROM track
	JOIN artist_to_track ON artist_to_track.track_id = track.id
	JOIN artist ON artist_to_track.artist_id = artist.id
	WHERE artist.name = 'Frank Sinatra';


-- What are the top 5 most often recorded songs?
SELECT song.name, COUNT(track.song_id) AS most FROM track
	JOIN song ON track.song_id = song.id
	JOIN artist_to_track ON artist_to_track.track_id = track.id
	GROUP BY song.name, track.song_id
	ORDER BY most DESC LIMIT 5;

-- Who are the top 5 song writers whose songs have been most often recorded?
SELECT writer, SUM(writer.the_song) AS times_recorded FROM (SELECT song_writer.name AS song_writer, COUNT(song.name) AS the_song FROM song_writer
	JOIN track ON track.song_writer_id = song_writer.id
	JOIN song ON track.song_id = song.id
	GROUP BY song_writer.name, song.name) AS writer
	GROUP BY writer.the_song, writer ORDER BY times_recorded DESC LIMIT 5;

-- Who is the most prolific song writer based on the number of songs he has written?
SELECT writer.name, SUM(writer.most) FROM(SELECT song_writer.name, COUNT(song.name) AS most FROM song
	JOIN track ON track.song_id = song.id
	JOIN song_writer ON song.song_writer_id = song_writer.id
	GROUP BY song_writer.name, song.name) AS writer
	GROUP BY writer.name ORDER BY SUM DESC LIMIT 1;

-- What songs has a given artist recorded?
SELECT artist.name AS artist, song.name AS song_recorded FROM artist_to_track
	JOIN track ON artist_to_track.track_id = track.id
	JOIN artist ON artist_to_track.artist_id = artist.id
	JOIN song ON track.song_id = song.id
	WHERE artist.name = 'The Beatles';

-- Who are the song writers whose songs a given artist has recorded?
SELECT DISTINCT(song_writer.name) AS song_writer, artist.name AS artist FROM song_writer
 	JOIN track ON track.song_writer_id = song_writer.id
	JOIN artist_to_track ON artist_to_track.track_id = track.id
	JOIN artist ON artist_to_track.artist_id = artist.id
	WHERE artist.name = 'The Best Band';

-- Who are the artists who have recorded a given song writer's songs?

SELECT DISTINCT(artist.name) AS recorded_by, song_writer.name AS song_writer FROM artist
  JOIN artist_to_track ON artist_to_track.artist_id = artist.id
  JOIN track ON artist_to_track.track_id = track.id
  JOIN song_writer ON track.song_writer_id = song_writer.id
  WHERE song_writer.name = 'M.C.A'
  ORDER BY recorded_by, song_writer;
