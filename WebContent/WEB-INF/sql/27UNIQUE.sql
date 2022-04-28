USE mydb1;
-- unique : 해당 컬럼의 값이 중복되면 안됨

CREATE TABLE mytable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC mytable10;
INSERT INTO mytable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO mytable10 (col1, col2) VALUES ('b', 'e');
INSERT INTO mytable10 (col1, col2) VALUES ('c', NULL);
INSERT INTO mytable10 (col1, col2) VALUES ('c', NULL);

SELECT * FROM mytable10;

-- unique, not null 조합
CREATE TABLE mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC mytable11;

SELECT * FROM mytable11;