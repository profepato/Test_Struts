CREATE DATABASE bd_productos;

USE bd_productos;

CREATE TABLE producto(
	id INT AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio INT,
    PRIMARY KEY(id)
);

SELECT * FROM producto;
DELETE FROM producto WHERE id >= 1;