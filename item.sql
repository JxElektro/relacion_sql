CREATE TABLE item (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price NUMERIC(10,2) NOT NULL,
  image_url TEXT
);


insert into item (name, description, price, image_url) values
('Cocacola', 'Bebida Gaseosa', 1.00, 'image_url'),
('Pepsi', 'Bebida Gaseosa', 1.00, 'image_url'),
('Fanta', 'Bebida Gaseosa', 1.00, 'image_url'),
('Sprite', 'Bebida Gaseosa', 1.00, 'image_url'),
('Cerveza', 'Bebida Alcohólica', 1.00, 'image_url'),
('Ron', 'Bebida Alcohólica', 1.00, 'image_url'),
('Vodka', 'Bebida Alcohólica', 1.00, 'image_url'),
('Whisky', 'Bebida Alcohólica', 1.00, 'image_url'),
('Tequila', 'Bebida Alcohólica', 1.00, 'image_url')

create table stock (
  id serial PRIMARY KEY,
  item_id int NOT NULL,
  quantity int NOT NULL,
  FOREIGN KEY (item_id) REFERENCES item(id)
);

insert into stock (item_id, quantity) values
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(9, 10)

alter table stock add column name varchar (50)

/* Dumb Update           */
update stock set name = (select name from item where item.id = stock.item_id)


