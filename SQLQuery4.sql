select * 
from members 
where registration_date ='01-01-2025';


select * 
from books
where title='Database Fundamentals';

alter table members
add email varchar(255);

INSERT INTO members (member_id, name, contact_info, membership_type, registration_date,email) VALUES
(6, 'Omar', '9876543210 ', 'Student', '05-06-2024',' Omar@gmail.com' );

select * from members;
select * from reservations;
select * from members m
join reservations r
on m.member_id=r.member_id;

select * from books;
select * from members_books;
select *
from members m
join members_books mb
on m.member_id=mb.member_id
where mb.book_id =(
select book_id 
from books 
where title='SQL for Beginners');




select *
from members m
join members_books mb
on m.member_id=mb.member_id
join books b
on mb.book_id=b.book_id
where title='C# Programming' and  return_date is not null;



select *
from members m
join members_books mb
on m.member_id=mb.member_id
where  return_date > due_date;


select b.book_id ,b.title,count( mb.book_id) as borrow_count
from books b 
join members_books mb 
on b.book_id=mb.book_id
group by b.book_id , b.title
Having count( mb.book_id)>3;


--select b.book_id ,b.title,count( mb.book_id) as borrow_count
--from books b 
--join members_books mb 
--on b.book_id=mb.book_id
--group by b.book_id , b.title
--Having count( mb.book_id)>0;

select *
from members m
join members_books mb 
on m.member_id=mb.member_id
where mb.borrowing_date between '2024-01-01' and '2024-01-10';


select count(book_id) as total_#of_books 
from books;

--Optional
select * 
from members m 
join members_books mb 
on m.member_id=mb.member_id
where return_date is null;

--Optional
select   * 
from members m 
join members_books mb 
on m.member_id=mb.member_id
join books b 
on b.book_id=mb.book_id
where b.category_id=(
select category_id
from categories
where name='Science Fiction');
