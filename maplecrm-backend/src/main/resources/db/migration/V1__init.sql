
CREATE TABLE users (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	email varchar(255) NOT NULL,
	email_verified bit(1) NOT NULL,
	image_url varchar(255) NULL,
	name varchar(255) NOT NULL,
	password varchar(255) NULL,
	provider varchar(255) NOT NULL,
	provider_id varchar(255) NULL,
	PRIMARY KEY (id)
);

CREATE TABLE role (
	name varchar(255) NOT NULL,
	description varchar(255),
	PRIMARY KEY (name)
);

CREATE TABLE user_role (
	id bigint(20) NOT NULL AUTO_INCREMENT,
	role_name varchar(255) NOT NULL,
	user_id bigint(20) NOT NULL,
    fk_user_role_user_id bigint(20),
    fk_user_role_role_name varchar(255),
	PRIMARY KEY (id),
	FOREIGN KEY (fk_user_role_user_id) REFERENCES users(id),
	FOREIGN KEY (fk_user_role_role_name) REFERENCES role(name)
);
