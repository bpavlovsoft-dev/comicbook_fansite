CREATE DATABASE IF NOT EXISTS comicbook_fansite;

CREATE TABLE IF NOT EXISTS comic_character
(
	char_id INT NOT NULL AUTO_INCREMENT,
	alias VARCHAR(40) NOT NULL,
	real_name VARCHAR(80) NOT NULL,
	liar_id INT NOT NULL,
	alingment ENUM("good", "bad") NOT NULL,
	PRIMARY KEY (char_id)
)ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS character_power
(
	character_id INT NOT NULL,
	power_id INT NOT NULL,
	PRIMARY KEY(character_id, power_id)
)ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS comic_liar
(
	liar_id INT NOT NULL AUTO_INCREMENT,
	zipcode_id CHAR(5) NOT NULL,
	address VARCHAR(40) NOT NULL,
	PRIMARY_KEY(liara_id)
)ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS comic_zipcode
(
	zipcode_id CHAR(5) NOT NULL,
	city VARCHAR(40) NOT NULL,
	state CHAR(2) NOT NULL,
	PRIMARY KEY(zipcode_id)
)ENGINE=MyISAM;

CREATE TABLE IF NOT EXISTS comic_rivalry
(
	hero_id INT NOT NULL,
	villan_id INT NOT NULL,
	PRIMARY KEY(hero_id, villan_id)
)ENGINE=MyISAM;