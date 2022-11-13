/* EJERCICIOS LECCION 4 - INSERCIÓN DE DATOS*/

/*EJERCICIO 1
Tabla zapatillas*/

INSERT INTO  Zapatillas (id_zapatilla, modelo, color, marca, talla)
VALUES (1,'XQYUN', 'Negro' ,'Nike',42), 
(2,'UOPMN', 'Rosas', 'Nike',39 ),
(3, 'OPNYT', 'Verdes', 'Adidas', 35);

/*EJERCICIO 2
Tabla empleados*/

INSERT INTO  Empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (1,'Laura', 'Alcobendas', 25987, '2010-09-03' ),
(2,'Maria', 'Sevilla' ,0 , '2001-04-11'),
(3,'Ester', 'Oviedo', 30165.98, '2000-11-29'); 

/*EJERCICIO 3
Tabla clientes*/

INSERT INTO  Clientes (id_cliente, nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES (1, 'Monica', '1234567289', 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
(2,'Lorena', '289345678' , 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
(3,'Carmen',' 298463759' , 'carmen@email.com', 'Calle Color', 'Vigo', 'Pontevedra', 23456);

/*EJERCICIO 4
Tabla facturas*/

INSERT INTO  Facturas (id_factura, numero_factura,  fecha, id_zapatilla, id_empleado, id_cliente, total_factura)
VALUES (1, '123', '2001-12-11', 1, 2, 1, 54.98),
 (2, '1234', '2005-05-23', 1, 1, 3, 89.91),
 (3, '12345', '2015-09-18', 2, 3, 3, 76.23);
 
 /*EJERCICIO 5
Tabla zapatillas: En nuestra tienda no vendemos zapatillas Rosas... 
¿Cómo es posible que tengamos zapatillas de color rosa? 🤔 En realidad esas zapatillas son amarillas.*/
 
 UPDATE Zapatillas
 SET color = 'amarillas' 
 WHERE id_zapatilla = 2;
 
 /*EJERCICIO 6
Tabla empleados
Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar, ahora vive en A Coruña.*/
 
UPDATE Empleados 
SET tienda = 'A coruña'
WHERE id_empleado = 1;

/*EJERCICIO 7
Tabla clientes
El Numero de telefono de Monica esta mal!!! Metimos un digito de más. En realidad su número es: 123456728*/

UPDATE Clientes 
SET numero_telefono = '123456728'
WHERE id_cliente = 1;

/*EJERCICIO 7
Tabla facturas
El total de la factura de la zapatilla cuyo id es 2 es incorrecto. En realidad es: 89,91.*/

UPDATE Facturas 
SET total_factura = 89.91
WHERE id_factura = 2;
 









