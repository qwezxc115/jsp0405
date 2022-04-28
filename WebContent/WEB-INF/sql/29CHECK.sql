USE mydb1;

-- CHECK : 입력되는 값을 검사
CREATE TABLE mytable14 (
	col1 INT,
    col2 INT CHECK (col2 > 0)
);

DESC mytable14;
INSERT INTO mytable14 (col1, col2) VALUES (3, 3);
INSERT INTO mytable14 (col1, col2) VALUES (-3, 3);
INSERT INTO mytable14 (col1, col2) VALUES (3, -3);
SELECT * FROM mytable14;

SHOW CREATE TABLE mytable14;

