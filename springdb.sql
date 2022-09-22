
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  username varchar(50) NOT NULL,
  password varchar(50) NOT NULL,
  enabled tinyint(1) NOT NULL,
  PRIMARY KEY (username)
); 
INSERT INTO users VALUES ('arun','welcome1',0);
INSERT INTO users VALUES ('pavan','welcome1',1);
INSERT INTO users VALUES ('shantanu','welcome1',1);
DROP TABLE IF EXISTS authorities;
CREATE TABLE authorities (
  username varchar(50) NOT NULL,
  authority varchar(50) NOT NULL,
  UNIQUE KEY ix_auth_username (username,authority),
  CONSTRAINT fk_authorities_users FOREIGN KEY (username) REFERENCES users (username)
);

INSERT INTO authorities VALUES ('shantanu','ROLE_USER');
INSERT INTO authorities VALUES ('arun','ROLE_USER');
INSERT INTO authorities VALUES ('pavan','ROLE_ADMIN');

