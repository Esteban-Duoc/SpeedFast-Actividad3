CREATE DATABASE IF NOT EXISTS speedfast_db;
USE speedfast_db;

CREATE TABLE repartidores (
                              id INT AUTO_INCREMENT PRIMARY KEY,
                              nombre VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos (
                         id INT AUTO_INCREMENT PRIMARY KEY,
                         direccion VARCHAR(255) NOT NULL,
                         tipo VARCHAR(20) NOT NULL,
                         estado VARCHAR(30) NOT NULL
);

CREATE TABLE entregas (
                          id INT AUTO_INCREMENT PRIMARY KEY,
                          id_pedido INT NOT NULL,
                          id_repartidor INT NOT NULL,
                          fecha DATE NOT NULL,
                          hora TIME NOT NULL,
                          FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
                          FOREIGN KEY (id_repartidor) REFERENCES repartidores(id)
);