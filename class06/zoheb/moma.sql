
DROP TABLE IF EXISTS artists;
CREATE TABLE artists(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	nationality VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS paintings;
CREATE TABLE paintings(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	year INTEGER,
	artist_id INTEGER REFERENCES artists(id)
);