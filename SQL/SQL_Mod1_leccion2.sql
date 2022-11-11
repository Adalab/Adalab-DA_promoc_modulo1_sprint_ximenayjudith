CREATE TABLE Zapatillas (
id_zapatilla INT AUTO_INCREMENT NOT NULL,
modelo VARCHAR (45) NOT NULL ,
color VARCHAR (45) NOT NULL, 

PRIMARY KEY (id_zapatilla)
);


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

CREATE TABLE Empleados (
id_empleado INT AUTO_INCREMENT NOT NULL,
nombre VARCHAR (45) NOT NULL ,
tienda VARCHAR (45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE  NOT NULL ,

PRIMARY KEY (id_empleado)
);

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
 
 
 