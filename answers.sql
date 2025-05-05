QUESTION 1
CREATE TABLE productDetail_1NF
order_id INT,
customerName VARCHAR(200)
product VARCHAR(200)
);
INSERT INTO productDetail_1NF (order_id, customerNmae, product)
SELECT order_id, customerName,
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

FROM productDetail
CROSS JOIN LATERAL string_split(products, ',');

QUESTION 2
CREATE TABEL orders (
  order_id INT PRIMARY KEY,
  customerName VARCHAR(200)
  );
INSERT INTO orders (order_id, customerName)
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE orderDeatils_2NF (
  order_id INT,
  product VARCHAR(200),
  quantity INT,
  PRIMARY KEY (order_id, product),
  FOREIGN KEY (order_id) REFERENCES orders(id)
  );
INSERT INTO orderdetails_2NF (order_id, product, quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
