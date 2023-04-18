USE codeup_test_db;
    DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL ,
    release_date VARCHAR(20) NOT NULL,
    sales TEXT NOT NULL,
    genre TEXT NOT NULL,
    PRIMARY KEY (id)
);