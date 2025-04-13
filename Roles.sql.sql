USE bookies_db;
CREATE ROLE bookies_admin;
-- Sales Rep to handle books and orders
CREATE ROLE bookies_sales_rep;
-- Customer Service to handle customers and tracks orders
CREATE ROLE bookies_customer_service;

GRANT ALL PRIVILEGES ON bookies_db.* TO bookies_admin;

GRANT SELECT, INSERT, UPDATE ON book TO bookies_sales_rep;
GRANT SELECT, INSERT, UPDATE ON book_author TO bookies_sales_rep;
GRANT SELECT, INSERT, UPDATE ON cust_order TO bookies_sales_rep;
GRANT SELECT, INSERT, UPDATE ON order_line TO bookies_sales_rep;

GRANT SELECT ON customer TO bookies_customer_service;
GRANT SELECT ON cust_order TO bookies_customer_service;
GRANT SELECT ON order_history TO bookies_customer_service;
GRANT SELECT ON order_status TO bookies_customer_service;

-- Create users
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin_pass1';
CREATE USER 'sales_user'@'localhost' IDENTIFIED BY 'sales_pass1';
CREATE USER 'service_user'@'localhost' IDENTIFIED BY 'service_pass1';

-- Assign roles to users
GRANT bookies_admin TO 'admin_user'@'localhost';
GRANT bookies_sales_rep TO 'sales_user'@'localhost';
GRANT bookies_customer_service TO 'service_user'@'localhost';

-- Set default roles (auto-activate on login)
SET DEFAULT ROLE ALL TO 'admin_user'@'localhost';
SET DEFAULT ROLE ALL TO 'sales_user'@'localhost';
SET DEFAULT ROLE ALL TO 'service_user'@'localhost';

