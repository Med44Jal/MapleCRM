alter table orders add column status varchar(255) default 'STARTED';

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(1, 'STARTED','2019-08-30', 1, (select id from customer where name = 'James Bach'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10000, 1, 1, (select id from product where name='Piano Black Leather ') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 1, 1, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(1999, 1, 1, (select id from product where name='Hyundai Santa Fe') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(2, 'PAID','2019-08-29', 1, (select id from customer where name = 'Bill Mozart'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10000, 1, 2, (select id from product where name='Piano Black Leather ') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 4, 2, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(1999, 2, 2, (select id from product where name='Hyundai Santa Fe') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(3, 'SHIPPED','2019-08-29', 1, (select id from customer where name = 'Marta Tchaikovsky'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10000, 2, 3, (select id from product where name='Toyota Corolla XRE') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 112, 3, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(11999, 1, 3, (select id from product where name='John Deere 1024 Tractor') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(4, 'PAID','2019-08-28', 1, (select id from customer where name = 'James Bach'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(1000000, 1, 4, (select id from product where name='House By The Lake') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(5, 'PAID','2019-08-25', 1, (select id from customer where name = 'James Bach'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10000, 1, 5, (select id from product where name='Piano Black Leather ') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 1, 5, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(1999, 1, 5, (select id from product where name='Toyota Corolla XRE') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(6, 'SHIPPED','2019-08-24', 1, (select id from customer where name = 'Talia Chopin'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(12000, 1, 6, (select id from product where name='Piano Black Leather ') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 3, 6, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(12999, 1, 6, (select id from product where name='John Deere 1024 Tractor') );

INSERT INTO orders(id, status, created_at, createdby_id, customer_id)VALUES(7, 'SHIPPED','2019-08-23', 1, (select id from customer where name = 'Bill Mozart'));
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(100000, 2, 7, (select id from product where name='House By The Lake') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(10, 3, 7, (select id from product where name='Xiaomi Mi 9 Triple Camera') );
INSERT INTO orderitem(price, quantity, order_id, product_id) VALUES(1999, 4, 7, (select id from product where name='Hyundai Santa Fe') );