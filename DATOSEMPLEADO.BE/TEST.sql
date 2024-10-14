/* Primer Proyecto
 * Base de datos "TEST"
 * Password de conexion: Mysqlserver2024
 * Servidor: LOCALHOST
 * Usuario: root
 * Puerto: 3306 en MySQL Workbench
 * Puerto: 3001 en mysql2 VS Code
 */

CREATE DATABASE TEST; # La base de datos se llama TEST.

USE TEST; # Sirve para indicar que base de datos se esta usando

/*
* Tabla: COLABORADOR
*	IDCOLABORADOR int(11) AI PK (Auto Increment PRIMARY KEY) Se va ir incrementado y va ser la llave primaria
*	NOMBRE varchar(45)
*   APELLIDO varchar(45)
*   DIRECCION varchar(45)
*   EDAD varchar(45)
*   PROFESION varchar(45)
*   ESTADOCIVIL varchar(45)
*/

# La tabla lleva por nombre COLABORADOR
CREATE TABLE COLABORADOR (
    IDCOLABORADOR int(11) AUTO_INCREMENT PRIMARY KEY,
    NOMBRE varchar(45),
    APELLIDO varchar(45),
    DIRECCION varchar(45),
    EDAD varchar(45),
    PROFESION varchar(45),
    ESTADOCIVIL varchar(45)
);

# Insertar registros a la tabla para la prueba
INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Juan', 'Perez', '7 calle 1-71 zona 12', 18, 'Estudiante', 'Soltero'); # El estado civil en backend se puede configurar a que de 3 opciones para que reducir la cantidad de opciones disponibles.

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Ana', 'Solares', '12 avenida 12-12 zona 10', 22, 'Contadora', 'Soltera');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Miguel', 'Lorenzana', '1 avenida 2-1 zona 1', 25, 'Ingeniero', 'Casasdo');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Juana', 'Gutierrez', '6 avenida 6-65 zona 11', 26, 'Abogada', 'Casada');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Adolfo', 'Castillo', '7 avenida 7-77 zona 9', 35, 'Maestro', 'Soltero');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Maria', 'Estrada', '6 avenida 1-67 Amatitlan', 40, 'Mecanica', 'Casada');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Kennet', 'Lemus', '14 calle 1-10 zona 10 Mixco', 50, 'Administrador', 'Casado');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Sonia', 'Perez', '5 calle final 7-98 Amatitlan', 51, 'Ama de casa', 'Viuda');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Pablo', 'Reyes', '13 calle 4-13 Amatitlan', 60, 'Ingeniero', 'Casado');

INSERT INTO COLABORADOR (NOMBRE, APELLIDO, DIRECCION, EDAD, PROFESION, ESTADOCIVIL) 
VALUES ('Margarita', 'Urizar', '18 avenida 18-14 zona 1', 70, 'Ama de casa', 'Casada');

# Ver registros dentro de la tabla
SELECT * FROM COLABORADOR;

# Borrar registro de la tabla
DELETE FROM COLABORADOR WHERE IDCOLABORADOR = 1; # Cambiar el ID al numero del colaborar que se quiere eliminar
