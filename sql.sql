create table Subject (
    subjectId INT PRIMARY KEY,
    subtitle VARCHAR(20) NOT NULL
)
create table book (
    bookId INT PRIMARY KEY,
    title VARCHAR(20) NOT NULL,
    price INT NOT NULL,
    volume INT,
    author VARCHAR(20),
    publishDate DATE,
    subjectId INT,
    FOREIGN KEY (subjectId) REFERENCES subject(subjectId)
);
--1. insert 5 subjects
insert into subject (subjectId, subtitle) values
(1, 'Telugu'),
(2, 'Hindi'),
(3, 'English'),
(4, 'Maths'),
(5, 'Science');
-- 2 .Insert 15 books
insert into book (bookId, title, price, volume, author, publishDate, subjectId) values
(1, 'Telugu 1', 50, 1, 'sai', '2024-01-01', 1),
(2, 'Telugu 2', 75, 1, 'Teja', '2024-02-01', 1),
(3, 'Telugu 3', 60, 1, 'Itachi', '2024-03-01', 1),
(4, 'Hindi 1', 80, 1, 'Madara', '2024-04-01', 2),
(5, 'Hindi 2', 70, 1, 'Naruto', '2024-05-01', 2),
(6, 'Hindi 3', 65, 1, 'luffy', '2024-06-01', 2),
(7, 'English 1', 90, 1, 'zoro', '2024-07-01', 3),
(8, 'English 2', 85, 1, 'shanks', '2024-08-01', 3),
(9, 'English 3', 95, 1, 'Light', '2024-09-01', 3),
(10, 'Maths 1', 100, 1, 'kira', '2024-10-01', 4),
(11, 'Maths 2', 110, 1, 'L', '2024-11-01', 4),
(12, 'Maths 3', 105, 1, 'Eren Yegar', '2024-12-01', 4),
(13, 'Physics', 120, 1, 'Levi', '2024-01-01', 5),
(14, 'Biology', 130, 1, 'Erwin', '2024-02-01', 5),
(15, 'Quantum physics', 140, 1, 'Mikey', '2024-03-01', 5);
select *from Subject
select * from book
--3.
select b.bookId,b.title,b.author,s.subjectId,s.subtitle from book b inner join subject s  on s.subjectid=b.subjectid;
--4.
select * from book where publishDate Between '2024-01-01' and '2024-12-31' 
--5.
select author,count(bookId)as numberofbooks from book group by author
--6.
select title,count(bookId)as numberofbooks from book group by title
--7.
select count(bookId) as booksbefore200 from book where publishDate< '2000-01-01' 
--8.
update book set price=200,volume=2 where bookId=1 
select*from  book
--9.
update book set price=price * 1.10 where subjectId=3
--10.
delete from book where bookId=2
--11.
select title as bookpriceabove500 from book where price > 500 and subjectId=4
--12.
select title from book order by title
--13.
select min(price) from book
--14
select min(price) from book
--15.
select count(bookId)as Mathsbooks from book where subjectId=4
--16.
select * from book b inner join subject s on b.bookId=s.subjectId where s.subjectId in (3,4,5);

    
