QUESTION 1
CREATE TABLE productDetail_1NF
order_id INT,
customerName VARCHAR(200)
product VARCHAR(200)
);
INSERT INTO productDetail_1NF (order_id, customerNmae, product)
SELECT order_id, customerName,
value
FROM productDetail
CROSS JOIN LATERAL string_split(products, ',');

QUESTION 2
CREATE TABEL orders (
  order_id INT PRIMARY KEY,
  customerName VARCHAR(200)
  );
CREATE TABLE orderDeatils_2NF (
  order_id INT,
  product VARCHAR(200),
  quantity,
  FOREIGN KEY (order_id) REFERENCES orders(id)
  );
INSERT INTO orders (order_id, customerName)
SELECT DISTINCT order_id, customerNmae
FROM orderDeatails;
INSERT INTO orderdetails_2NF (order_id, product, quantity)
SELECT order_id, product, quantity 
FROM orderDetails;
