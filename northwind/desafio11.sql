--  SELECT (notes >= IS <= 39) FROM northwind.purchase_orders;
--  https://www.mysqltutorial.org/mysql-like/

SELECT notes FROM northwind.purchase_orders
WHERE notes LIKE '%3%';