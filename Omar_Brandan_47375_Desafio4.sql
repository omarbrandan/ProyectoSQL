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
profesion VARCHAR(50),
primary key(ClienteID)
) engine=InnoDB default charset=latin1 comment='tabla de clientes';

select * from Cliente;

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
Nombre varchar(100) comment 'Nombre de producto',
Tipo varchar(100) comment 'Tipo de categoría',
PRIMARY KEY(CategoriaID)
) engine=InnoDB default charset=latin1 comment='tabla de categorías';

SELECT * FROM Categoria;

CREATE TABLE IF NOT EXISTS Producto(
ProductoID int not null auto_increment comment 'Clave primaria Producto',
Nombre varchar(100) comment 'Nombre de producto',
CategoriaID int not null comment 'Categoría',
PRIMARY KEY(ProductoID),
FOREIGN KEY(CategoriaID) REFERENCES Categoria(CategoriaID)
) engine=InnoDB default charset=latin1 comment='tabla de producto';

SELECT * FROM Producto;