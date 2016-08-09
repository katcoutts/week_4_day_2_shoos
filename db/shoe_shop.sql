DROP TABLE shoes;


CREATE TABLE shoes (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  quantity INT2,
  size INT2,
  colour VARCHAR(255),
  street_address VARCHAR(255),
  town VARCHAR(255),
  postcode VARCHAR(255)
);