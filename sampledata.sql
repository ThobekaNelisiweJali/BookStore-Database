-- Insert languages
INSERT INTO book_language (language_name) VALUES ('English'), ('French'), ('Spanish'), ('German'), ('Italian'), ('Chinese'), ('Japanese'), ('Russian'), ('Arabic'), ('Portuguese');

-- Insert publishers
INSERT INTO publisher (name, contact_email)
VALUES 
('O\'Reilly Media', 'contact@oreilly.com'),
('Penguin Books', 'info@penguin.com');


-- Insert authors

INSERT INTO author (first_name, last_name) VALUES
('George', 'Orwell'), ('J.K.', 'Rowling'), ('Mark', 'Twain'), ('Jane', 'Austen'),
('Leo', 'Tolstoy'), ('Agatha', 'Christie'), ('Ernest', 'Hemingway'), ('F. Scott', 'Fitzgerald'),
('Virginia', 'Woolf'), ('Oscar', 'Wilde'), ('Mary', 'Shelley'), ('Charles', 'Dickens'),
('Emily', 'Bronte'), ('J.R.R.', 'Tolkien'), ('Stephen', 'King'), ('Isaac', 'Asimov'),
('Harper', 'Lee'), ('Franz', 'Kafka'), ('Arthur', 'Conan Doyle'), ('Gabriel', 'García Márquez'),
('Aldous', 'Huxley'), ('Ray', 'Bradbury'), ('George R.R.', 'Martin'), ('Douglas', 'Adams'),
('Philip', 'Pullman'), ('Neil', 'Gaiman'), ('Kurt', 'Vonnegut'), ('Toni', 'Morrison'),
('J.D.', 'Salinger'), ('Chinua', 'Achebe');

-- Insert books
INSERT INTO book (title, isbn, language_id, publisher_id, price, publication_year) VALUES
('1984', '9780451524935', 1, 1, 15.99, 1949),
('Harry Potter and the Sorcerer\'s Stone', '9780747532699', 1, 2, 12.99, 1997),
('The Adventures of Tom Sawyer', '9780141321103', 1, 2, 10.99, 1876),
('Pride and Prejudice', '9780141199078', 1, 2, 9.99, 1813),
('War and Peace', '9780199232765', 2, 1, 19.99, 1869),
('Murder on the Orient Express', '9780062073501', 1, 2, 11.50, 1934),
('The Old Man and the Sea', '9780684801223', 1, 1, 14.99, 1952),
('The Great Gatsby', '9780743273565', 1, 1, 13.99, 1925),
('Mrs. Dalloway', '9780156628709', 1, 1, 11.99, 1925),
('The Picture of Dorian Gray', '9780141439570', 1, 2, 10.50, 1890),
('Frankenstein', '9780486282114', 1, 2, 8.99, 1818),
('Oliver Twist', '9780141439747', 1, 1, 10.99, 1837),
('Wuthering Heights', '9780141439556', 1, 2, 9.99, 1847),
('The Hobbit', '9780261103344', 1, 2, 13.50, 1937),
('The Shining', '9780307743657', 1, 2, 12.99, 1977),
('Foundation', '9780553293357', 1, 1, 14.99, 1951),
('To Kill a Mockingbird', '9780061120084', 1, 2, 13.99, 1960),
('The Metamorphosis', '9780553213690', 1, 1, 8.50, 1915),
('Sherlock Holmes: The Complete Novels', '9780241952894', 1, 2, 18.99, 1892),
('One Hundred Years of Solitude', '9780060883287', 2, 1, 16.99, 1967),
('Brave New World', '9780060850524', 1, 1, 12.99, 1932),
('Fahrenheit 451', '9781451673319', 1, 1, 13.99, 1953),
('A Game of Thrones', '9780553593716', 1, 2, 14.99, 1996),
('The Hitchhiker\'s Guide to the Galaxy', '9780345391803', 1, 2, 11.99, 1979),
('The Golden Compass', '9780440418320', 1, 1, 9.99, 1995),
('American Gods', '9780062572231', 1, 2, 14.50, 2001),
('Slaughterhouse-Five', '9780440180296', 1, 1, 13.99, 1969),
('Beloved', '9781400033416', 1, 1, 12.99, 1987),
('The Catcher in the Rye', '9780316769488', 1, 1, 10.99, 1951),
('Things Fall Apart', '9780385474542', 1, 2, 11.99, 1958);

-- Link authors to books
INSERT INTO book_author (book_id, author_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
(21, 21), (22, 22), (23, 23), (24, 24), (25, 25),
(26, 26), (27, 27), (28, 28), (29, 29), (30, 30);

-- Insert customers
INSERT INTO customer (first_name, last_name, email, phone_number) VALUES
('Alice', 'Smith', 'alice@example.com', '0700000001'),
('Bob', 'Johnson', 'bob@example.com', '0700000002'),
('Carol', 'Williams', 'carol@example.com', '0700000003'),
('David', 'Jones', 'david@example.com', '0700000004'),
('Eva', 'Brown', 'eva@example.com', '0700000005'),
('Frank', 'Davis', 'frank@example.com', '0700000006'),
('Grace', 'Miller', 'grace@example.com', '0700000007'),
('Hank', 'Wilson', 'hank@example.com', '0700000008'),
('Ivy', 'Moore', 'ivy@example.com', '0700000009'),
('Jake', 'Taylor', 'jake@example.com', '0700000010'),
('Kate', 'Anderson', 'kate@example.com', '0700000011'),
('Liam', 'Thomas', 'liam@example.com', '0700000012'),
('Mia', 'Jackson', 'mia@example.com', '0700000013'),
('Noah', 'White', 'noah@example.com', '0700000014'),
('Olivia', 'Harris', 'olivia@example.com', '0700000015'),
('Paul', 'Martin', 'paul@example.com', '0700000016'),
('Quinn', 'Thompson', 'quinn@example.com', '0700000017'),
('Rose', 'Garcia', 'rose@example.com', '0700000018'),
('Sam', 'Martinez', 'sam@example.com', '0700000019'),
('Tina', 'Robinson', 'tina@example.com', '0700000020');

-- Insert countries
INSERT INTO country (country_name) VALUES ('Kenya'), ('USA'), ('UK');

-- Insert address statuses
INSERT INTO address_status (status_description) VALUES ('Current'), ('Old');

-- Insert addresses
INSERT INTO address (street, city, postal_code, country_id) VALUES
('101 Main St', 'Nairobi', '00100', 1),
('202 River Rd', 'Mombasa', '00200', 1),
('303 Hill Ln', 'Kisumu', '00300', 1),
('404 Ocean Ave', 'New York', '10001', 2),
('505 Elm St', 'Los Angeles', '90001', 2),
('606 Sunset Blvd', 'Chicago', '60601', 2),
('707 Maple Dr', 'London', 'E1 6AN', 3),
('808 Forest Rd', 'Manchester', 'M1 2WD', 3),
('909 Cedar Ct', 'Bristol', 'BS1 4DJ', 3),
('11 Palm St', 'Nakuru', '00400', 1),
('22 Lakeview Rd', 'Eldoret', '00500', 1),
('33 Valley Blvd', 'Kampala', '00600', 1),
('44 Ridge Rd', 'Accra', '00700', 1),
('55 Sunshine Ave', 'Dar Es Salaam', '00800', 1),
('66 Moonlight St', 'Cape Town', '00900', 1),
('77 Galaxy Rd', 'Abuja', '01000', 1),
('88 Comet Dr', 'Addis Ababa', '01100', 1),
('99 Saturn Blvd', 'Algiers', '01200', 1),
('100 Venus Ln', 'Cairo', '01300', 1),
('200 Earth Ave', 'Johannesburg', '01400', 1);

-- Link customer addresses
INSERT INTO customer_address (customer_id, address_id, status_id) VALUES
(1, 1, 1), (2, 2, 1), (3, 3, 1), (4, 4, 1), (5, 5, 1),
(6, 6, 1), (7, 7, 1), (8, 8, 1), (9, 9, 1), (10, 10, 1),
(11, 11, 1), (12, 12, 1), (13, 13, 1), (14, 14, 1), (15, 15, 1),
(16, 16, 1), (17, 17, 1), (18, 18, 1), (19, 19, 1), (20, 20, 1);

-- Insert shipping methods
INSERT INTO shipping_method (method_name, cost) VALUES
('Standard', 3.99), ('Express', 7.99);

-- Insert order statuses
INSERT INTO order_status (status_description) VALUES
('Pending'), ('Shipped'), ('Delivered');

-- Insert orders
INSERT INTO cust_order (customer_id, order_date, shipping_method_id, current_status_id) VALUES
(1, CURDATE(), 1, 1), (2, CURDATE(), 2, 2), (3, CURDATE(), 1, 3), (4, CURDATE(), 2, 1),
(5, CURDATE(), 1, 2), (6, CURDATE(), 2, 3), (7, CURDATE(), 1, 1), (8, CURDATE(), 2, 2),
(9, CURDATE(), 1, 3), (10, CURDATE(), 2, 1), (11, CURDATE(), 1, 2), (12, CURDATE(), 2, 3),
(13, CURDATE(), 1, 1), (14, CURDATE(), 2, 2), (15, CURDATE(), 1, 3), (16, CURDATE(), 2, 1),
(17, CURDATE(), 1, 2), (18, CURDATE(), 2, 3), (19, CURDATE(), 1, 1), (20, CURDATE(), 2, 2);

-- Insert order lines
INSERT INTO order_line (order_id, book_id, quantity, price) VALUES
(1, 1, 1, 15.99), (2, 2, 1, 12.99), (3, 3, 1, 10.99), (4, 4, 1, 9.99),
(5, 5, 1, 19.99), (6, 6, 1, 11.50), (7, 7, 1, 14.99), (8, 8, 1, 13.99),
(9, 9, 1, 11.99), (10, 10, 1, 10.50), (11, 11, 1, 8.99), (12, 12, 1, 10.99),
(13, 13, 1, 9.99), (14, 14, 1, 13.50), (15, 15, 1, 12.99), (16, 16, 1, 14.99),
(17, 17, 1, 13.99), (18, 18, 1, 8.50), (19, 19, 1, 18.99), (20, 20, 1, 16.99);

-- Insert order history
INSERT INTO order_history (order_id, status_id, changed_at) VALUES
(1, 1, NOW()), (2, 2, NOW()), (3, 3, NOW()), (4, 1, NOW()), (5, 2, NOW()),
(6, 3, NOW()), (7, 1, NOW()), (8, 2, NOW()), (9, 3, NOW()), (10, 1, NOW()),
(11, 2, NOW()), (12, 3, NOW()), (13, 1, NOW()), (14, 2, NOW()), (15, 3, NOW()),
(16, 1, NOW()), (17, 2, NOW()), (18, 3, NOW()), (19, 1, NOW()), (20, 2, NOW());