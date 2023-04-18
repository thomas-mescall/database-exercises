USE codeup_test_db;
    SELECT name AS 'Albums' FROM albums;
    UPDATE albums SET sales = sales * '10';

    SELECT name AS 'Albums Before 1980' FROM albums WHERE release_date < '1980';
    UPDATE albums SET release_date - '100' WHERE release_date < '1980';

    SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
    UPDATE albums SET 'Peter Jackson' WHERE artist = 'Michael Jackson';