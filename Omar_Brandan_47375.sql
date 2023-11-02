DROP SCHEMA IF EXISTS PROYECTO_FINAL;
CREATE SCHEMA PROYECTO_FINAL; 
USE PROYECTO_FINAL;

create table if not exists Cliente (
ClienteID INT not null auto_increment comment 'Clave primaria',
nombre varchar(100) not null comment 'Nombre cliente',
apellido varchar(100) not null comment 'Apellido cliente',
email VARCHAR(100),
telefono INT not null comment 'móvil',
codigo_postal int(4) default null,
edad int(3) default null,
sexo char(1) not null,
primary key(ClienteID)
) engine=InnoDB default charset=latin1 comment='tabla de clientes';

select * from Cliente;

ALTER TABLE Cliente MODIFY telefono VARCHAR(10) not null;
ALTER TABLE Cliente MODIFY codigo_postal VARCHAR(10);
ALTER TABLE Cliente MODIFY sexo VARCHAR(20);

DROP TABLE Cliente;

CREATE TABLE IF NOT EXISTS Delivery(
DeliveryID int not null auto_increment comment 'Clave primaria Delivery',
Tipo VARCHAR(50) comment 'Tipo de delivery',
Estado VARCHAR(50) comment 'Estado del delivery',
PRIMARY KEY(DeliveryID)
) engine=InnoDB default charset=latin1 comment='tabla de deliverys';

SELECT * FROM Delivery;

CREATE TABLE IF NOT EXISTS Orden(
OrdenID int not null auto_increment comment 'Clave primaria Orden',
Fecha date not null comment 'Fecha del pedido',
DeliveryID int not null comment 'Delivery',
ClienteID int not null comment 'Cliente',
PRIMARY KEY(OrdenID),
FOREIGN KEY(ClienteID) REFERENCES Cliente(ClienteID),
FOREIGN KEY(DeliveryID) REFERENCES Delivery(DeliveryID)
) engine=InnoDB default charset=latin1 comment='tabla de órdenes';

SELECT * FROM Orden;

DROP TABLE Orden;

CREATE TABLE IF NOT EXISTS Categoria(
CategoriaID int not null auto_increment comment 'Clave primaria Categoría',
Tipo varchar(100) comment 'Tipo de categoría',
PRIMARY KEY(CategoriaID)
) engine=InnoDB default charset=latin1 comment='tabla de categorías';

SELECT * FROM Categoria;

DROP TABLE Categoria;

CREATE TABLE IF NOT EXISTS Producto(
ProductoID int not null auto_increment comment 'Clave primaria Producto',
Nombre varchar(100) comment 'Nombre de producto',
CategoriaID int not null comment 'Categoría',
PRIMARY KEY(ProductoID),
FOREIGN KEY(CategoriaID) REFERENCES Categoria(CategoriaID)
) engine=InnoDB default charset=latin1 comment='tabla de producto';

SELECT * FROM Producto;

DROP TABLE Producto;


-- Generación de datos: Cliente

insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (1, 'Amelita', 'Castiblanco', 'acastiblanco0@bing.com', '9161389980', '35650-000', 64, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (2, 'Jard', 'Templeton', 'jtempleton1@ameblo.jp', '4055298114', '981 22', 55, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (3, 'Elora', 'Weadick', 'eweadick2@google.de', '5154818288', null, 97, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (4, 'Grenville', 'Vicioso', 'gvicioso3@ca.gov', '9997241277', null, 48, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (5, 'Padgett', 'Mixon', 'pmixon4@posterous.com', '6522437898', '999-0601', 25, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (6, 'Danit', 'Wreak', 'dwreak5@microsoft.com', '9606752212', '44300-000', 67, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (7, 'Egbert', 'Consadine', 'econsadine6@uiuc.edu', '3071548340', null, 58, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (8, 'Pincus', 'Ochterlony', 'pochterlony7@blinklist.com', '6063559205', null, 25, 'Non-binary');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (9, 'Cecil', 'Osbourne', 'cosbourne8@scientificamerican.com', '6633322110', null, 92, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (10, 'Sydney', 'Mayhou', 'smayhou9@elegantthemes.com', '1528037912', null, 1, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (11, 'Audie', 'Prestedge', 'aprestedgea@go.com', '3773246546', 'MD-3652', 69, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (12, 'Avie', 'Bull', 'abullb@spotify.com', '3191285063', '5856', 32, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (13, 'Adham', 'Hellen', 'ahellenc@arstechnica.com', '5589161307', null, 26, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (14, 'Doralynn', 'Letixier', 'dletixierd@soundcloud.com', '3389932021', null, 73, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (15, 'Caldwell', 'Prettyjohn', 'cprettyjohne@mapy.cz', '9339968379', null, 45, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (16, 'Ansell', 'Spiniello', 'aspiniellof@storify.com', '6925076038', null, 71, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (17, 'Patten', 'Backshaw', 'pbackshawg@elpais.com', '2899994740', '6700', 99, 'Polygender');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (18, 'Cherri', 'Mc Elory', 'cmceloryh@nifty.com', '7127563489', null, 65, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (19, 'Randee', 'Dellenbroker', 'rdellenbrokeri@webs.com', '5829708510', '22501', 56, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (20, 'Shamus', 'McIan', 'smcianj@narod.ru', '8046834714', null, 49, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (21, 'Joey', 'Huonic', 'jhuonick@statcounter.com', '9773525885', '055018', 96, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (22, 'Khalil', 'Amiranda', 'kamirandal@newsvine.com', '4454611146', '11920-000', 87, 'Bigender');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (23, 'Dickie', 'Hannent', 'dhannentm@nymag.com', '6419018206', '385129', 43, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (24, 'Joela', 'Le Count', 'jlecountn@ustream.tv', '7749504734', '411 12', 77, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (25, 'Federica', 'Brend', 'fbrendo@umn.edu', '4345244797', null, 34, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (26, 'Edyth', 'Novello', 'enovellop@dailymail.co.uk', '3045500989', null, 18, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (27, 'Ruth', 'Geelan', 'rgeelanq@edublogs.org', '8432748461', '29424', 63, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (28, 'Hedi', 'Challener', 'hchallenerr@myspace.com', '1632521817', null, 50, 'Polygender');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (29, 'Gaby', 'Dougharty', 'gdoughartys@ca.gov', '2507361925', null, 65, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (30, 'Stanfield', 'Richford', 'srichfordt@addthis.com', '1731269715', null, 33, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (31, 'Lanie', 'Chrystal', 'lchrystalu@admin.ch', '6766928162', null, 79, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (32, 'Ring', 'Forsdyke', 'rforsdykev@twitter.com', '5611859038', '347502', 89, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (33, 'Gill', 'Wollaston', 'gwollastonw@forbes.com', '6763370072', null, 38, 'Polygender');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (34, 'Homere', 'Duckering', 'hduckeringx@princeton.edu', '6596222237', '450049', 9, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (35, 'Teddi', 'Zanetti', 'tzanettiy@loc.gov', '4511159194', '531 93', 76, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (36, 'Renata', 'Baudin', 'rbaudinz@biglobe.ne.jp', '3758404713', null, 11, 'Polygender');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (37, 'Mahalia', 'Roebottom', 'mroebottom10@ask.com', '1933967584', '19600-000', 26, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (38, 'Joleen', 'Nannoni', 'jnannoni11@nytimes.com', '5106963572', '38190-000', 24, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (39, 'Elbertina', 'Beare', 'ebeare12@uiuc.edu', '1887878379', null, 47, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (40, 'Kiah', 'Swalteridge', 'kswalteridge13@myspace.com', '3256098573', '4755-463', 98, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (41, 'Della', 'Facchini', 'dfacchini14@wired.com', '3116565803', '62600-000', 44, 'Genderqueer');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (42, 'Kata', 'Hammerman', 'khammerman15@hostgator.com', '4617965686', '58353', 54, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (43, 'Lalo', 'Bumpas', 'lbumpas16@ezinearticles.com', '2845821107', null, 62, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (44, 'Meredithe', 'Pinnington', 'mpinnington17@cocolog-nifty.com', '2435353057', '397440', 46, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (45, 'Salvidor', 'Stive', 'sstive18@joomla.org', '5961135604', '78-410', 34, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (46, 'Peyter', 'Juszkiewicz', 'pjuszkiewicz19@usa.gov', '7478145384', null, 81, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (47, 'Trefor', 'Nathan', 'tnathan1a@cam.ac.uk', '3729031424', '4600-758', 22, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (48, 'Christophorus', 'Dyka', 'cdyka1b@pcworld.com', '5047477734', null, 38, 'Male');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (49, 'Julia', 'Mullinder', 'jmullinder1c@aboutads.info', '2414357854', '3730', 87, 'Female');
insert into Cliente (ClienteID, nombre, apellido, email, telefono, codigo_postal, edad, sexo) values (50, 'Tuckie', 'Eschelle', 'teschelle1d@gizmodo.com', '2379768420', '1000-005', 91, 'Male');

-- Generación de datos: Delivery

insert into Delivery (DeliveryID, Tipo, Estado) values (1, 'Wabi', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (2, 'másDelivery', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (3, 'PedidosYa', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (4, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (5, 'Rappi', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (6, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (7, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (8, 'másDelivery', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (9, 'Rappi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (10, 'Cabify', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (11, 'Rappi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (12, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (13, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (14, 'Cabify', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (15, 'Wabi', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (16, 'Cabify', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (17, 'másDelivery', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (18, 'másDelivery', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (19, 'Wabi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (20, 'másDelivery', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (21, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (22, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (23, 'PedidosYa', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (24, 'másDelivery', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (25, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (26, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (27, 'Wabi', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (28, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (29, 'Cabify', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (30, 'Wabi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (31, 'Cabify', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (32, 'Rappi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (33, 'Cabify', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (34, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (35, 'másDelivery', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (36, 'másDelivery', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (37, 'Rappi', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (38, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (39, 'PedidosYa', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (40, 'Wabi', 'En Camino');
insert into Delivery (DeliveryID, Tipo, Estado) values (41, 'PedidosYa', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (42, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (43, 'Cabify', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (44, 'másDelivery', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (45, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (46, 'másDelivery', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (47, 'PedidosYa', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (48, 'Cabify', 'Pedido Listo');
insert into Delivery (DeliveryID, Tipo, Estado) values (49, 'Cabify', 'Entregado');
insert into Delivery (DeliveryID, Tipo, Estado) values (50, 'PedidosYa', 'Pedido Listo');

-- Generación de datos: Orden

insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (1, '2023-07-04', 1, 1);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (2, '2023-05-02', 2, 2);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (3, '2023-04-20', 3, 3);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (4, '2023-02-12', 4, 4);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (5, '2023-05-08', 5, 5);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (6, '2023-05-15', 6, 6);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (7, '2023-04-23', 7, 7);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (8, '2023-02-08', 8, 8);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (9, '2023-03-18', 9, 9);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (10, '2023-11-22', 10, 10);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (11, '2023-11-08', 11, 11);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (12, '2023-05-18', 12, 12);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (13, '2023-04-19', 13, 13);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (14, '2023-04-20', 14, 14);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (15, '2023-09-05', 15, 15);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (16, '2023-05-26', 16, 16);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (17, '2023-12-20', 17, 17);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (18, '2023-03-16', 18, 18);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (19, '2023-09-05', 19, 19);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (20, '2023-08-08', 20, 20);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (21, '2023-07-31', 21, 21);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (22, '2023-08-21', 22, 22);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (23, '2023-12-03', 23, 23);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (24, '2023-04-15', 24, 24);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (25, '2023-08-18', 25, 25);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (26, '2023-04-14', 26, 26);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (27, '2023-01-10', 27, 27);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (28, '2023-07-23', 28, 28);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (29, '2023-07-04', 29, 29);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (30, '2023-03-19', 30, 30);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (31, '2023-10-04', 31, 31);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (32, '2023-06-19', 32, 32);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (33, '2023-10-30', 33, 33);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (34, '2023-01-30', 34, 34);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (35, '2023-04-13', 35, 35);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (36, '2023-08-05', 36, 36);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (37, '2023-10-01', 37, 37);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (38, '2023-06-08', 38, 38);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (39, '2023-03-17', 39, 39);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (40, '2023-05-29', 40, 40);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (41, '2023-04-02', 41, 41);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (42, '2023-08-07', 42, 42);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (43, '2023-03-13', 43, 43);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (44, '2023-09-27', 44, 44);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (45, '2023-01-14', 45, 45);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (46, '2023-08-16', 46, 46);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (47, '2023-02-18', 47, 47);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (48, '2023-09-02', 48, 48);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (49, '2023-03-20', 49, 49);
insert into Orden (OrdenID, Fecha, DeliveryID, ClienteID) values (50, '2023-07-30', 50, 50);

-- Generación de datos: Categoria

insert into Categoria (CategoriaID, Tipo) values (1, 'Platos preparados');
insert into Categoria (CategoriaID, Tipo) values (2, 'Refrigerados');
insert into Categoria (CategoriaID, Tipo) values (3, 'Congelados');

-- Generación de datos: Producto

insert into Producto (ProductoID, Nombre, CategoriaID) values (1, 'Empanadas', 1);
insert into Producto (ProductoID, Nombre, CategoriaID) values (2, 'Sandwichs', 1);
insert into Producto (ProductoID, Nombre, CategoriaID) values (3, 'Calzones', 1);
insert into Producto (ProductoID, Nombre, CategoriaID) values (4, 'Carnes', 1);
insert into Producto (ProductoID, Nombre, CategoriaID) values (5, 'Empanadas refrigeradas', 2);
insert into Producto (ProductoID, Nombre, CategoriaID) values (6, 'Sandwichs refrigeradas', 2);
insert into Producto (ProductoID, Nombre, CategoriaID) values (7, 'Calzones refrigeradas', 2);
insert into Producto (ProductoID, Nombre, CategoriaID) values (8, 'Carnes refrigeradas', 2);
insert into Producto (ProductoID, Nombre, CategoriaID) values (9, 'Empanadas congeladas', 3);
insert into Producto (ProductoID, Nombre, CategoriaID) values (10, 'Sandwichs congeladas', 3);
insert into Producto (ProductoID, Nombre, CategoriaID) values (11, 'Calzones congeladas', 3);
insert into Producto (ProductoID, Nombre, CategoriaID) values (12, 'Carnes congeladas', 3);