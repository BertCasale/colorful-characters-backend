DROP DATABASE IF EXISTS colorful_characters_dev;

CREATE DATABASE colorful_characters_dev;

\c colorful_characters_dev

CREATE TABLE games (
  id SERIAL PRIMARY KEY,
  game VARCHAR(40) NOT NULL,
  image TEXT NOT NULL,
  description TEXT NOT NULL,
  platforms TEXT,
  release INT NOT NULL,
  lgbt BOOLEAN DEFAULT false,
  poc BOOLEAN DEFAULT false,
  disability BOOLEAN DEFAULT false
);

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  image TEXT NOT NULL,
  description TEXT NOT NULL,
  protagonist BOOLEAN DEFAULT false,
  playable BOOLEAN DEFAULT false,
  lgbt BOOLEAN DEFAULT false,
  lgbt_type VARCHAR(50),
  poc BOOLEAN DEFAULT false,
  poc_type VARCHAR(50),
  disability BOOLEAN DEFAULT false,
  disability_type VARCHAR(50),
  game_id INTEGER REFERENCES games(id) ON DELETE CASCADE
);

