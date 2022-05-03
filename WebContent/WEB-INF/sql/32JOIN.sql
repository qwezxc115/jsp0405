-- JOIN

USE mydb2;

SELECT * FROM Board; -- 4열, 3행
SELECT * FROM Reply; -- 4열, 4행

SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8열(4+4), 12행(3*4)
SELECT * FROM Reply, Board;
SELECT * FROM Board JOIN Reply; -- Cartesian Product
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN