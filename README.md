
# Bookstore Database Project

This project is a MySQL database system designed to manage a bookstore's operations. It includes schema design, user role management, and test queries to extract useful insights.

## 📚 Overview

The database models:
- Books, Authors, Publishers, and Languages
- Customers and their addresses
- Orders, shipping, and order status tracking

## 🛠 Technologies
- MySQL
- Draw.io (for ERD)

## 📁 Tables Created
- `book`
- `author`
- `book_author`
- `book_language`
- `publisher`
- `customer`
- `customer_address`
- `address`
- `address_status`
- `country`
- `cust_order`
- `order_line`
- `shipping_method`
- `order_history`
- `order_status`

## 🗃 Features
- Many-to-many relationship between books and authors
- Customers with multiple addresses
- Full order tracking via status history
- Modular and normalized structure

## 🧪 Sample Queries
```sql
-- Books by an author
SELECT b.title FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.last_name = 'Orwell';

-- Total spending by customer
SELECT c.first_name, SUM(ol.quantity * ol.price) AS total_spent
FROM customer c
JOIN cust_order o ON c.customer_id = o.customer_id
JOIN order_line ol ON o.order_id = ol.order_id
GROUP BY c.customer_id;
```

## 👤 User Roles
```sql
-- Create read-only role
CREATE ROLE read_only;
GRANT SELECT ON BookStore.* TO read_only;

-- Create user and assign role
CREATE USER 'bookstore_user'@'localhost' IDENTIFIED BY 'StrongPassword123';
GRANT read_only TO 'bookstore_user'@'localhost';
```

## 🧩 ER Diagram
The ERD is available in the repository as an image and can be opened in Draw.io for editing.

## ✅ How to Run
1. Import `bookstore_schema.sql` into your MySQL instance.
2. (Optional) Load test data.
3. Run queries or integrate with a backend.

---

**Deadline:** 13/04/2025  
**Group Submission:** Upload this repo to GitHub and submit the repo link.
