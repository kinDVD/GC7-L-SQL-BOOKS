--#1
--CREATE TABLE member(
--	id INT IDENTITY PRIMARY KEY,
--	[name] NVARCHAR(40),
--	card_number CHAR(10)
--);

--CREATE TABLE book(
--	id INT IDENTITY(1,1) PRIMARY KEY,
--	title NVARCHAR(60),
--	author NVARCHAR(60),
--	checked_out_by_id INT FOREIGN KEY REFERENCES member(id)
--	);

--#2
--INSERT INTO member([name], card_number)
--VALUES('Annabelle Aster', '772-93-110'),
--('Boris Berceli', '000-00-000'),
--('Carter Corbin', '282-09-382')

--#3
--INSERT INTO book(title, author, checked_out_by_id)
--VALUES('In Search of Lost Time', 'Marcel Proust', 1),
--('Ulysses', 'James Joyce', 1),
--('Don Quixote', 'Miguel de Cervantes',3),
--('Moby Dick', 'Herman Melville', NULL)

--#4
--UPDATE member SET card_number='357-15-964' WHERE id=2;

--#5
--DELETE FROM member WHERE id=2;

--6
--SELECT * FROM member WHERE card_number='772-93-110';

--#7
--SELECT * FROM book ORDER BY title;

--#8
--UPDATE book SET checked_out_by_id=1 WHERE title='Moby Dick';

--#9
--UPDATE book SET checked_out_by_id=NULL WHERE title='Ulysses';

--#10
--SELECT * FROM book
--FULL JOIN member ON book.checked_out_by_id = member.id

--#11
--SELECT * FROM book 
--RIGHT JOIN member ON book.checked_out_by_id = member.id
--WHERE member.name='Annabelle Aster';

--#12
--SELECT member.name, member.card_number FROM member
--LEFT JOIN book ON book.checked_out_by_id = member.id
--WHERE book.author='Herman Melville';