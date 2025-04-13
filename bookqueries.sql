USE BookStore;

-- getting the total revenue from all the orders
SELECT SUM(price) AS total_revenue FROM order_line;

-- finding the number of total customers
SELECT COUNT(*) AS total_customers FROM customer;

-- getting customers who havent made an order
SELECT c.customer_id, c.first_name, c.last_name
FROM customer c
LEFT JOIN cust_order o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- getting the most sold books
SELECT b.title, SUM(ol.quantity) AS total_sold
FROM order_line ol
JOIN book b ON ol.book_id = b.book_id
GROUP BY b.title
ORDER BY total_sold DESC
LIMIT 10;

-- getting total orders by country
SELECT 
    co.country_name,
    COUNT(o.order_id) AS total_orders
FROM 
    country co
JOIN 
    address a ON co.country_id = a.country_id
JOIN 
    customer_address ca ON a.address_id = ca.address_id
JOIN 
    customer c ON ca.customer_id = c.customer_id
JOIN 
    cust_order o ON c.customer_id = o.customer_id
GROUP BY 
    co.country_name
ORDER BY 
    total_orders DESC;
    
-- getting the most sold books
SELECT 
    b.title,
    SUM(ol.quantity) AS total_sold
FROM 
    order_line ol
JOIN 
    book b ON ol.book_id = b.book_id
GROUP BY 
    b.title
ORDER BY 
    total_sold DESC
LIMIT 5;

-- grouping orders by their status e.g. pending,shipped and delivered
SELECT os.status_description, COUNT(o.order_id) AS order_count
FROM cust_order o
JOIN order_status os ON o.current_status_id = os.status_id
GROUP BY os.status_description;

