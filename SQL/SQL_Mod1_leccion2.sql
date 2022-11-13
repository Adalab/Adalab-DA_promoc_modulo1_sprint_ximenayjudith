/* EJERCICIOS LECCION 2 - CREATE TABLE*/

/*EJERCICIO 1
Antes de nada para poder empezar este ejercicio deberemos crear la base de datos, para ello deberemos escribir:*/

 CREATE SCHEMA tienda_zapatillas;
 USE tienda_zapatillas;

/*EJERCICIO 2
Tabla Zapatillas: tiene 3 columnas: id_zapatilla, modelo, color con las siguientes características:*/

CREATE TABLE Zapatillas (
id_zapatilla INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR (45) NOT NULL ,
color VARCHAR (45) NOT NULL, 

PRIMARY KEY (id_zapatilla)
);

/*EJERCICIO 3
Tabla Clientes: tiene 9 columnas id_cliente, nombre, numero_telefono, email, direccion, ciudad,
provincia, pais, codigo_postal con las siguientes características:*/

CREATE TABLE Clientes (
id_cliente INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (45) NOT NULL ,
numero_telefono INT (9) NOT NULL,
email VARCHAR (45) NOT NULL, 
direccion VARCHAR (45) NOT NULL ,
ciudad VARCHAR (45), 
provincia VARCHAR (45) NOT NULL,
pais VARCHAR (45) NOT NULL,
codigo_postal VARCHAR (45) NOT NULL, 

PRIMARY KEY (id_cliente)
);

/*EJERCICIO 4
Tabla Empleados: tiene 5 columnas id_empleado, nombre, tienda, salario, fecha_incorporacion con las siguientes características:*/

CREATE TABLE Empleados (
id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (45) NOT NULL ,
tienda VARCHAR (45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE  NOT NULL ,

PRIMARY KEY (id_empleado)
);

/*EJERCICIO 5
Tabla Facturas: tiene 6 columnas id_factura ,numero de factura, fecha, id_empleado, id_cliente, id_zapatilla, con las siguientes características:*/

CREATE TABLE Facturas (
      id_factura INT AUTO_INCREMENT NOT NULL,
      numero_factura VARCHAR (45) NOT NULL ,
      fecha DATE NOT NULL,
      id_zapatilla INT NOT NULL,
      id_empleado INT NOT NULL,
      id_cliente INT NOT NULL,
      
 PRIMARY KEY (id_factura),
 
CONSTRAINT fk_facturas_Zapatillas
 foreign key (id_zapatilla)
REFERENCES Zapatillas (id_zapatilla),
CONSTRAINT fk_facturas_Empleado
 foreign key (id_empleado)
REFERENCES Empleados (id_empleado),
CONSTRAINT fk_facturas_Clientes
 foreign key (id_cliente)
REFERENCES Clientes (id_cliente)
 );
 
 
 