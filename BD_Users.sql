-- Crear la base de datos si no existe
CREATE DATABASE Productos;

-- Seleccionar la base de datos
USE Productos;

-- Crear la tabla Productos
CREATE TABLE IF NOT EXISTS Productos(
    id INT NOT NULL AUTO_INCREMENT,
    producto VARCHAR(45) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

-- Insertar productos
INSERT INTO Productos (producto, precio, marca)
VALUES ('Laptop', 1000, 'Dell');

INSERT INTO Productos (producto, precio, marca)
VALUES ('Mouse', 25, 'Logitech');

INSERT INTO Productos (producto, precio, marca)
VALUES ('Teclado', 50, 'Logitech');

INSERT INTO Productos (producto, precio, marca)
VALUES ('Monitor', 200, 'Dell');

-- Consultar todos los productos
SELECT * FROM Productos;

-- Consultar solamente un producto
SELECT * FROM Productos
LIMIT 1;

-- Consultar productos con precio mayor a 100
SELECT * FROM Productos
WHERE precio > 100;

-- Consultar productos de la marca Logitech
SELECT * FROM Productos
WHERE marca = 'Logitech';