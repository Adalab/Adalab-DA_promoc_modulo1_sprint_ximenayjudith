/* EJERCICIOS LECCION 3 - ALTER TABLE*/

/* EJERCICIO 1
Tabla Zapatillas:
Se nos ha olvidado introducir la marca y la talla de las zapatillas que tenemos en nuestra BBDD. Por lo tanto, debemos incluir:
marca: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
talla: es un entero, no nulo.*/

ALTER TABLE Zapatillas 
ADD COLUMN marca VARCHAR (45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

/* EJERCICIO 2
Tabla Empleados
salario: es un entero, no nulo. Pero puede que el salario de nuestros empleados tenga decimales, por lo que le cambiaremos el tipo a decimal.*/

ALTER TABLE Empleados
MODIFY  COLUMN salario FLOAT NOT NULL;

/* EJERCICIO 3
Tabla Clientes
pais: la hemos incluido en la tabla pero nuestro negocio solo distribuye a España, por lo que es una columna que no hará falta. La eliminaremos.
codigo_postal: es un string, pero esto no tiene mucho ya que son números de longitud fija de 5 caracteres. Por lo tanto, cambiaremos el tipo a 
entero de longitud 5.*/

ALTER TABLE Clientes
DROP COLUMN pais,
MODIFY COLUMN codigo_postal  INT;

/* EJERCICIO 4
Tabla Facturas:
total: madre mía!!! Se nos ha olvidado incluir el total de la cada factura generada😨!Creemos esa columna con un tipo de datos decimal.*/

ALTER TABLE Facturas
ADD COLUMN total_factura FLOAT NOT NULL;



