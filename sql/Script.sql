

CREATE TABLE categoria (
  idC int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(60) NOT NULL,
  PRIMARY KEY (idC)
) AUTO_INCREMENT=11;


REPLACE INTO categoria (idC, nombre) VALUES
	(1,'Flash');
REPLACE INTO categoria (idC, nombre) VALUES
	(2,'Camara');
REPLACE INTO categoria (idC, nombre) VALUES
	(3,'Memoria');
REPLACE INTO categoria (idC, nombre) VALUES
	(4,'Tripode');
REPLACE INTO categoria (idC, nombre) VALUES
	(5,'Filtro');
REPLACE INTO categoria (idC, nombre) VALUES
	(6,'Bolso');
REPLACE INTO categoria (idC, nombre) VALUES
	(7,'Mochila');
REPLACE INTO categoria (idC, nombre) VALUES
	(8,'Cinto');
REPLACE INTO categoria (idC, nombre) VALUES
	(9,'Bateria');
REPLACE INTO categoria (idC, nombre) VALUES
	(10,'Zoom');



CREATE TABLE productos (
  idP int(11) NOT NULL AUTO_INCREMENT,
  marca varchar(60) NOT NULL,
  descripcion varchar(60) NOT NULL,
  origen varchar(60) NOT NULL,
  precio int(11) NOT NULL,
  categoria int(11) NOT NULL,
  PRIMARY KEY (idP,categoria),
  CONSTRAINT FK_categoria FOREIGN KEY (categoria) REFERENCES categoria (idC)
) AUTO_INCREMENT=22;


REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(1,'Xanxi','Flash de Camara','china',200,1);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(2,'Wolf','Camara','alemania',500,2);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(3,'Mahjong','Memoria SD','china',20,3);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(4,'GoPro','Tripode para Camara','usa',50,4);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(5,'Parker','Filtro de Camara','usa',50,5);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(6,'Xaota','Camara','china',400,2);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(7,'Xony','Camara','china',400,2);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(8,'Kingston','Memoria SD','usa',40,3);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(9,'Gordon','Flash para Camara','usa',300,1);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(10,'Shock','Filtro de Camara','alemania',50,5);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(11,'Xuminga','bolso','china',100,6);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(12,'Mahjong','Bolso de Carga','china',80,6);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(13,'Machgulg','Tripode alto.','alemania',55,4);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(14,'Cachilu','Flash economico','china',170,1);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(15,'Shumager','Cinturon multiples bolsillos','alemania',80,8);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(16,' Obscure','Filtro de luz.','usa',55,5);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(17,'LowImpact','Cinturon fijo','usa',55,8);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(18,'MaxCharge','Bateria recargable.','usa',150,9);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(19,'Karcher','Bateria doble.','alemania',165,9);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(20,'Kiokos','Mochila mediana','china',70,7);
REPLACE INTO productos (idP, marca, descripcion, origen, precio, categoria) VALUES
	(21,'Xixion','Zoom economico','china',25,10);
