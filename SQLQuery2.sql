
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255)
);


CREATE TABLE books(
book_id INT PRIMARY KEY,
 title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT,
    availability_status VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);


CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(100),
    membership_type VARCHAR(50),
    registration_date DATE ,
     CHECK (membership_type IN ('Student', 'Teacher', 'Visitor'))
);


CREATE TABLE members_books (
    member_book_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrowing_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);




CREATE TABLE reservations (
    reservation_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    reservation_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    CHECK (status IN ('Pending', 'Cancelled', 'Completed'))

);


CREATE TABLE staffs (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    contact_info VARCHAR(100),
    assigned_section VARCHAR(100),
    employment_date DATE
);
