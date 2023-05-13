-- Create the music database if it doesn't exist
CREATE DATABASE IF NOT EXISTS music;

-- Use the music database
USE music;

-- Drop tables if they exist
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

-- Create the artists table
CREATE TABLE artists (
    artist_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100)
);

-- Create the albums table
CREATE TABLE albums (
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album_title VARCHAR(100),
    album_artist_id INT,
    album_year INT,
    FOREIGN KEY (album_artist_id) REFERENCES artists(artist_id)
);

-- Create the songs table
CREATE TABLE songs (
    song_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    song_title VARCHAR(100),
    song_artist_id INT,
    song_album_id INT,
    song_len INT,
    FOREIGN KEY (song_artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (song_album_id) REFERENCES albums(album_id)
);

-- Insert values into the artists table
INSERT INTO artists (artist_name)
VALUES
    ('Beyoncé'),
    ('John Legend'),
    ('Rihanna'),
    ('Frank Ocean');

-- Insert values into the albums table
INSERT INTO albums (album_title, album_artist_id, album_year)
VALUES
    ('Lemonade', 1, 2016),
    ('4', 1, 2011),
    ('Get Lifted', 2, 2004),
    ('Love in the Future', 2, 2013),
    ('Good Girl Gone Bad', 3, 2007),
    ('Rated R', 3, 2009),
    ('Blonde', 4, 2016),
    ('Channel Orange', 4, 2012);

-- Insert values into the songs table
INSERT INTO songs (song_title, song_artist_id, song_album_id, song_len)
VALUES
    ('Formation', 1, 1, 240),
    ('Halo', 1, 2, 215),
    ('All of Me', 2, 3, 260),
    ('Ordinary People', 2, 4, 247),
    ('Umbrella', 3, 5, 250),
    ('Diamonds', 3, 6, 223),
    ('Nikes', 4, 7, 300),
    ('Thinkin Bout You', 4, 8, 212);


