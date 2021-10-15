#Creación y uso de la base de datos 
CREATE DATABASE tiendatecnologica;
drop database tiendatecnologica;
USE tiendatecnologica;

CREATE TABLE usuarios (
    cedula_usuario BIGINT PRIMARY KEY,
    email_usuario VARCHAR(255) NOT NULL,
    nombre_usuario VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL
);

INSERT INTO usuarios values(1,'laura@gmail.com','Laura Machado','admin123456','admininicial');
INSERT INTO usuarios values(2,'andrea@hotmail.com','Andrea Muñoz','pass','user');
INSERT INTO usuarios VALUES(3,'jasson@yahoo.com','Jasson Murcia','pass2','user2');

select * from usuarios;

CREATE TABLE clientes (
    cedula_cliente BIGINT PRIMARY KEY,
    correo_electronico VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    nombre_completo VARCHAR(255) NOT NULL,
    telefono INT NOT NULL
);
drop table clientes;
INSERT INTO clientes values(123,'jj@gmail.com','cra120','Laura Machado','13245');
INSERT INTO clientes values(234,'dos@gmail.com','cll12','Andrea Muñoz','13245');
INSERT INTO clientes values(345,'cd@gmail.com','av5','Jasson Murcia','13245');
INSERT INTO clientes VALUES(414,'c@d.com','Call29','Pepito Pérez','33333');
select * from clientes;

CREATE TABLE proveedores (
    nit BIGINT PRIMARY KEY,
    nombre_proveedor VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono INT NOT NULL,
    ciudad VARCHAR(255) NOT NULL
);
drop table proveedores;
INSERT INTO proveedores values(1,'Nestle','Km 45','98767','Cartagena');

alter table proveedores rename column ciudad_proveedor to ciudad;
select * from proveedores;

CREATE UNIQUE INDEX usuario_unico
ON usuarios(usuario);

CREATE UNIQUE INDEX cliente_unico
ON clientes(nombre_completo);

CREATE TABLE productos (
    codigo_producto BIGINT PRIMARY KEY,
    iva_compra DOUBLE NOT NULL,
    nit BIGINT NOT NULL,
    nombre_producto VARCHAR(255) NOT NULL,
    precio_compra DOUBLE,
    precio_venta DOUBLE NOT NULL,
    FOREIGN KEY (nit) REFERENCES proveedores(nit)
);
drop table productos;
select * from productos;

# modulo ventas
create table ventas(
codigo_venta bigint primary key auto_increment,
cedula_cliente bigint,
cedula_usuario bigint,
ivaventa double,
total_venta double,
valor_venta double,
FOREIGN KEY (cedula_cliente) REFERENCES clientes(cedula_cliente)
);

ALTER TABLE ventas
ADD FOREIGN KEY (cedula_usuario) REFERENCES usuarios(cedula_usuario);
select * from ventas;

create table detalle_ventas(
codigo_detalle_venta bigint primary key auto_increment,
cantidad_producto int,
codigo_producto bigint,
codigo_venta bigint,
valor_total double,
valor_venta double,
valoriva double,
FOREIGN KEY (codigo_producto) REFERENCES productos(codigo_producto)
);

ALTER TABLE detalle_ventas
ADD FOREIGN KEY (codigo_venta) REFERENCES ventas(codigo_venta);

select count(*) from detalle_ventas;


