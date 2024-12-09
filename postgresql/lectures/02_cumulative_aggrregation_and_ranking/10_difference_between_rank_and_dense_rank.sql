CREATE TABLE students (
	student_id INT PRIMARY KEY,
	student_score INT
);


SELECT * FROM students;

INSERT INTO students VALUES
(1, 980),
(2, 960),
(3, 960),
(4, 990),
(5, 920),
(6, 960),
(7, 980),
(8, 960),
(9, 940),
(10, 940);

SELECT *,
	rank() OVER (ORDER BY student_score DESC),
	dense_rank() OVER (ORDER BY student_score DESC)
FROM students;
