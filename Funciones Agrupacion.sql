/* 
 * CREACI�N DE USUARIO SI TRABAJAS CON ORACLE LOCAL 
 *
 * Ejecuta este script conectado con el usuario SYSTEM o SYS
 * IMPORTANTE: el usuario SYS debe conectarse con rol SYSDBA
 *
 */
/* 
ALTER SESSION SET "_Oracle_Script"=TRUE;


CREATE USER MDY2131_P1 
IDENTIFIED BY "MDY2131.practica_1"
DEFAULT TABLESPACE "USERS"
TEMPORARY TABLESPACE "TEMP";

ALTER USER MDY2131_P1 QUOTA UNLIMITED ON USERS;

GRANT CREATE SESSION TO MDY2131_P1;

GRANT "RESOURCE" TO MDY2131_P1;

ALTER USER MDY2131_P1 DEFAULT ROLE "RESOURCE";
*/



/* 
 * CREACI�N DE USUARIO SI TRABAJAS CON ORACLE CLOUD 
 *
 * Ejecuta este script conectado con el usuario ADMIN
 *
 */
/*
CREATE USER MDY2131_P1 
IDENTIFIED BY "MDY2131.practica_1"
DEFAULT TABLESPACE DATA
TEMPORARY TABLESPACE "TEMP";

ALTER USER MDY2131_P1 QUOTA UNLIMITED ON DATA;

GRANT CREATE SESSION TO MDY2131_P1;

GRANT "RESOURCE" TO MDY2131_P1;

ALTER USER MDY2131_P1 DEFAULT ROLE "RESOURCE";
*/




/* 
 * CREACI�N DE SCHEMA CONECTADO CON USUARIO MDY2131_P1  
 *
 */
/*
-- Creaci�n de la tabla Productos
CREATE TABLE Productos (
    producto_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    precio NUMBER(10, 2) NOT NULL,
    categoria VARCHAR2(50)
);

-- Creaci�n de la tabla Clientes
CREATE TABLE Clientes (
    cliente_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    fecha_registro DATE DEFAULT SYSDATE,
    ciudad VARCHAR2(50)
);
-- Creaci�n de la tabla Ventas
CREATE TABLE Ventas (
    venta_id NUMBER PRIMARY KEY,
    producto_id NUMBER NOT NULL,
    cliente_id NUMBER NOT NULL,
    fecha DATE DEFAULT SYSDATE,
    cantidad NUMBER NOT NULL,
    -- Definici�n de claves for�neas
    CONSTRAINT fk_producto FOREIGN KEY (producto_id) REFERENCES Productos(producto_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);


CREATE TABLE Empleados (
    empleado_id NUMBER PRIMARY KEY,
    nombre VARCHAR2(100),
    departamento_id NUMBER,
    salario NUMBER,
    fecha_ingreso DATE
);


-- Poblamiento de la tabla Productos
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (1, 'Laptop', 1500.00, 'Electr�nica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (2, 'Tel�fono', 800.00, 'Electr�nica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (3, 'Teclado', 30.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (4, 'Monitor', 200.00, 'Electr�nica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (5, 'Impresora', 120.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (6, 'Mouse', 25.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (7, 'C�mara', 300.00, 'Fotograf�a');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (8, 'Auriculares', 50.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (9, 'Tablet', 350.00, 'Electr�nica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (10, 'Bocinas', 75.00, 'Audio');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (11, 'Disco Duro', 100.00, 'Almacenamiento');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (12, 'Memoria USB', 15.00, 'Almacenamiento');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (13, 'Router', 60.00, 'Redes');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (14, 'Cargador', 20.00, 'Accesorios');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (15, 'Laptop Gamer', 2500.00, 'Electr�nica');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (16, 'Silla de Oficina', 100.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (17, 'Proyector', 450.00, 'Oficina');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (18, 'Microondas', 90.00, 'Hogar');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (19, 'Refrigerador', 800.00, 'Hogar');
INSERT INTO Productos (producto_id, nombre, precio, categoria) VALUES (20, 'Ventilador', 40.00, 'Hogar');

-- Poblamiento de la tabla Clientes
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (1, 'Juan P�rez', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Santiago');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (2, 'Mar�a L�pez', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Valpara�so');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (3, 'Carlos D�az', TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'Concepci�n');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (4, 'Ana Gonz�lez', TO_DATE('2023-04-18', 'YYYY-MM-DD'), 'La Serena');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (5, 'Pedro Morales', TO_DATE('2023-05-23', 'YYYY-MM-DD'), 'Antofagasta');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (6, 'Sof�a Ram�rez', TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Rancagua');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (7, 'Felipe Castillo', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'Temuco');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (8, 'Lorena Soto', TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Iquique');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (9, 'Gonzalo Herrera', TO_DATE('2023-09-07', 'YYYY-MM-DD'), 'Copiap�');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (10, 'Patricia Figueroa', TO_DATE('2023-10-02', 'YYYY-MM-DD'), 'Chill�n');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (11, 'Diego Fuentes', TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'Osorno');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (12, 'Natalia Vargas', TO_DATE('2023-02-12', 'YYYY-MM-DD'), 'Puerto Montt');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (13, 'Esteban Mart�nez', TO_DATE('2023-03-19', 'YYYY-MM-DD'), 'Arica');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (14, 'Ver�nica Tapia', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'Coyhaique');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (15, 'Andr�s Paredes', TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'Punta Arenas');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (16, 'Camila Flores', TO_DATE('2023-06-22', 'YYYY-MM-DD'), 'Talca');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (17, 'Jorge Salinas', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'Quillota');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (18, 'Paulina Rojas', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 'Calama');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (19, 'Ricardo Vargas', TO_DATE('2023-09-20', 'YYYY-MM-DD'), 'Vi�a del Mar');
INSERT INTO Clientes (cliente_id, nombre, fecha_registro, ciudad) VALUES (20, 'Tamara Fern�ndez', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Arica');

-- Poblamiento de la tabla Ventas
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (2, 2, 3, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (3, 5, 2, TO_DATE('2023-05-07', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (4, 3, 4, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (5, 4, 5, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (6, 6, 6, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (7, 7, 7, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 4);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (8, 8, 8, TO_DATE('2023-09-10', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (9, 9, 9, TO_DATE('2023-10-01', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (10, 10, 10, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (11, 11, 11, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (12, 12, 12, TO_DATE('2023-12-01', 'YYYY-MM-DD'), 5);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (13, 13, 13, TO_DATE('2023-10-12', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (14, 14, 14, TO_DATE('2023-09-25', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (15, 15, 15, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 1);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (16, 16, 16, TO_DATE('2023-07-30', 'YYYY-MM-DD'), 4);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (17, 17, 17, TO_DATE('2023-06-21', 'YYYY-MM-DD'), 2);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (18, 18, 18, TO_DATE('2023-05-19', 'YYYY-MM-DD'), 6);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (19, 19, 19, TO_DATE('2023-04-11', 'YYYY-MM-DD'), 3);
INSERT INTO Ventas (venta_id, producto_id, cliente_id, fecha, cantidad) VALUES (20, 20, 20, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 2);


COMMIT;
*/

SELECT 
    p.categoria, 
    p.nombre, 
    p.precio 
FROM 
    Productos p 
ORDER BY 
    p.precio DESC;


SELECT 
    TO_CHAR(fecha, 'YYYY-MM') AS MES_A�O, 
    SUM(cantidad) AS TOTAL_VENDIDO 
FROM 
    Ventas 
GROUP BY 
    TO_CHAR(fecha, 'YYYY-MM') 
ORDER BY 
    TOTAL_VENDIDO DESC;


SELECT 
    v.cliente_id, 
    SUM(p.precio * v.cantidad) AS total_gastado 
FROM 
    Ventas v 
JOIN 
    Productos p ON v.producto_id = p.producto_id 
JOIN 
    Clientes c ON v.cliente_id = c.cliente_id 
WHERE 
    c.fecha_registro >= ADD_MONTHS(SYSDATE, -12) 
GROUP BY 
    v.cliente_id 
ORDER BY 
    total_gastado DESC 
FETCH FIRST 1 ROWS ONLY;  


SELECT 
    departamento_id, 
    AVG(salario) AS salario_promedio, 
    MAX(salario) AS salario_maximo, 
    MIN(salario) AS salario_minimo 
FROM 
    Empleados 
GROUP BY 
    departamento_id;


SELECT 
    departamento_id, 
    MAX(salario) AS salario_maximo 
FROM 
    Empleados 
GROUP BY 
    departamento_id;


SELECT 
    e.empleado_id, 
    e.nombre, 
    (SYSDATE - e.fecha_ingreso) / 365 AS antig�edad 
FROM 
    Empleados e 
WHERE 
    (SYSDATE - e.fecha_ingreso) / 365 > 10;







