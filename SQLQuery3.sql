INSERT INTO categories (category_id, name, description) VALUES
(1, 'Science Fiction', 'Sci-Fi Books'),
(2, 'Programming', 'Coding Books'),
(3, 'Database', 'Database Books'),
(4, 'History', 'Historical Books'),
(5, 'General', 'General Knowledge');



INSERT INTO books (book_id, title, author, genre, publication_year, availability_status, category_id) VALUES
(1, 'Database Fundamentals', 'John Smith', 'Education', 2020, 'Available', 3),
(2, 'SQL for Beginners', 'Alice Brown', 'Programming', 2021, 'Available', 2),
(3, 'C# Programming', 'David Lee', 'Programming', 2019, 'Borrowed', 2),
(4, 'Space Journey', 'Carl Sagan', 'Sci-Fi', 2018, 'Available', 1),
(5, 'World History', 'Mark Adams', 'History', 2015, 'Available', 4);


INSERT INTO members (member_id, name, contact_info, membership_type, registration_date) VALUES
(1, 'Ahmad', '0791111111', 'Student', '2025-01-01'),
(2, 'Sara', '0792222222', 'Teacher', '2024-06-05'),
(3, 'Omar', '0793333333', 'Student', '2024-06-05'),
(4, 'Lina', '0794444444', 'Visitor', '2024-01-02'),
(5, 'Khaled', '0795555555', 'Student', '2024-01-08');


INSERT INTO members_books (member_book_id, member_id, book_id, borrowing_date, due_date, return_date) VALUES
(1, 1, 2, '2024-01-02', '2024-01-07', '2024-01-08'), 
(2, 2, 3, '2024-01-03', '2024-01-08', '2024-01-07'), 
(3, 3, 3, '2024-01-05', '2024-01-10', NULL),  
(4, 4, 1, '2024-01-06', '2024-01-11', '2024-01-11'),
(5, 5, 4, '2024-01-07', '2024-01-12', '2024-01-15'); 


INSERT INTO reservations (reservation_id, member_id, book_id, reservation_date, status) VALUES
(1, 1, 1, '2024-01-01', 'Completed'),
(2, 2, 2, '2024-01-02', 'Pending'),
(3, 3, 3, '2024-01-03', 'Cancelled'),
(4, 4, 4, '2024-01-04', 'Completed'),
(5, 5, 5, '2024-01-05', 'Pending');


INSERT INTO staffs (staff_id, name, contact_info, assigned_section, employment_date) VALUES
(1, 'Ali', '0781111111', 'IT', '2020-01-01'),
(2, 'Mona', '0782222222', 'Management', '2019-05-10'),
(3, 'Hassan', '0783333333', 'Support', '2021-03-15'),
(4, 'Rana', '0784444444', 'Books', '2022-07-20'),
(5, 'Yousef', '0785555555', 'Archives', '2018-11-11');


select * from categories;
select * from books;
select * from members;
select * from members_books;
select * from staffs;
select * from reservations;