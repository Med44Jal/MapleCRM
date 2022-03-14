CREATE TABLE customer (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	address varchar(255),
	birthdate date,
	city varchar(255),
	description varchar(255),
	email varchar(255),
	gender varchar(255),
	name varchar(255),
	phone varchar(255),
	state varchar(255),
	CONSTRAINT customer_pkey PRIMARY KEY (id)
);

CREATE TABLE product (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	name varchar(255),
	price decimal(19,2),
	quantity_in_stock decimal(19,2) NULL,
	CONSTRAINT product_pkey PRIMARY KEY (id)
);

CREATE TABLE orderitem (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	price decimal(19,2) ,
	quantity decimal(19,2) ,
	order_id bigint(20),
	product_id bigint(20),
	CONSTRAINT order_item_pkey PRIMARY KEY (id)
);

CREATE TABLE orders (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	created_at timestamp NULL,
	createdby_id bigint(20) NULL,
	customer_id bigint(20) NULL,
	CONSTRAINT orders_pkey PRIMARY KEY (id)
);

ALTER TABLE orderitem ADD CONSTRAINT fk_orderitem_product FOREIGN KEY (product_id) REFERENCES product(id);
ALTER TABLE orderitem ADD CONSTRAINT fk_orderitem_order FOREIGN KEY (order_id) REFERENCES orders(id);

ALTER TABLE orders ADD CONSTRAINT fk_order_createdby FOREIGN KEY (createdby_id) REFERENCES users(id);
ALTER TABLE orders ADD CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES customer(id);
