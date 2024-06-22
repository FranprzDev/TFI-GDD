INSERT INTO Sector (codSector, nombre) VALUES
(1, 'Compras'),
(2, 'Ventas'),
(3, 'Recursos Humanos');

INSERT INTO Departamento (nombre, codSector) VALUES
('Contabilidad', 3),
('Marketing', 2),
('Logística', 1),
('Capacitación', 3),
('Selección', 3),
('Relaciones Laborales', 3),
('Salud Ocupacional', 3),
('Seguridad e Higiene', 3);

INSERT INTO Pais (codPais, nombre) VALUES
('ARG', 'Argentina'),
('BRA', 'Brasil'),
('CHI', 'Chile'),
('URU', 'Uruguay'),
('PAR', 'Paraguay'),
('BOL', 'Bolivia'),
('PER', 'Perú');

INSERT INTO Provincia (nombre, codPais) VALUES
('Buenos Aires', 'ARG'),
('Córdoba', 'ARG'),
('Santa Fe', 'ARG'),
('Mendoza', 'ARG'),
('Santiago del Estero', 'ARG'),
('Chubut', 'ARG')
('Tucumán', 'ARG'),
('Salta', 'ARG'),
('Jujuy', 'ARG'),
('Chaco', 'ARG'),
('Formosa', 'ARG'),
('Misiones', 'ARG'),
('Corrientes', 'ARG'),
('Entre Ríos', 'ARG'),
('La Pampa', 'ARG'),
('San Juan', 'ARG'),
('San Luis', 'ARG'),
('La Rioja', 'ARG'),
('Catamarca', 'ARG'),
('Neuquén', 'ARG'),
('Río Negro', 'ARG'),
('Santiago', 'CHI'),
('Valparaíso', 'CHI'),
('Concepción', 'CHI'),
('Antofagasta', 'CHI'),
('Valdivia', 'CHI'),
('São Paulo', 'BRA'),
('Rio de Janeiro', 'BRA'),
('Salvador', 'BRA'),
('Brasília', 'BRA'),
('Fortaleza', 'BRA'),
('Montevideo', 'URU'),
('Canelones', 'URU'),
('Maldonado', 'URU'),
('Rocha', 'URU'),
('Colonia', 'URU'),
('Asunción', 'PAR'),
('Ciudad del Este', 'PAR'),
('Encarnación', 'PAR'),
('Luque', 'PAR'),
('San Lorenzo', 'PAR'),
('La Paz', 'BOL'),
('Santa Cruz', 'BOL'),
('Cochabamba', 'BOL'),
('Sucre', 'BOL'),
('Oruro', 'BOL'),
('Lima', 'PER'),
('Arequipa', 'PER'),
('Trujillo', 'PER'),
('Cusco', 'PER'),
('Chiclayo', 'PER');

INSERT INTO Localidad (nombre, codProv) VALUES
('San Miguel de Tucumán', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Yerba Buena', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Tafí Viejo', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Banda del Río Salí', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Alderetes', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Famaillá', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Aguilares', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Concepción', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Monteros', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Río Seco', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Simoca', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Lules', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Tafí del Valle', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Trancas', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Burruyacú', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Graneros', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('La Cocha', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Leales', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Chicligasta', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Alberdi', (SELECT codProv FROM Provincia WHERE nombre = 'Tucumán')),
('Salta', (SELECT codProv FROM Provincia WHERE nombre = 'Salta')),
('Cafayate', (SELECT codProv FROM Provincia WHERE nombre = 'Salta')),
('San Antonio de los Cobres', (SELECT codProv FROM Provincia WHERE nombre = 'Salta')),
('Santiago del Estero', (SELECT codProv FROM Provincia WHERE nombre = 'Santiago del Estero')),
('La Banda', (SELECT codProv FROM Provincia WHERE nombre = 'Santiago del Estero')),
('Termas de Río Hondo', (SELECT codProv FROM Provincia WHERE nombre = 'Santiago del Estero')),
('Buenos Aires', (SELECT codProv FROM Provincia WHERE nombre = 'Buenos Aires')),
('La Plata', (SELECT codProv FROM Provincia WHERE nombre = 'Buenos Aires')),
('Mar del Plata', (SELECT codProv FROM Provincia WHERE nombre = 'Buenos Aires')),
('Comodoro Rivadavia', (SELECT codProv FROM Provincia WHERE nombre = 'Chubut')),
('Puerto Madryn', (SELECT codProv FROM Provincia WHERE nombre = 'Chubut')),
('Esquel', (SELECT codProv FROM Provincia WHERE nombre = 'Chubut')),
('San Salvador de Jujuy', (SELECT codProv FROM Provincia WHERE nombre = 'Jujuy')),
('Humahuaca', (SELECT codProv FROM Provincia WHERE nombre = 'Jujuy')),
('Tilcara', (SELECT codProv FROM Provincia WHERE nombre = 'Jujuy'));

INSERT INTO Deposito (direccion, codLoc) VALUES 
('Av. Monseñor Diaz 202', (SELECT codLoc FROM Localidad WHERE nombre = 'Banda del Río Salí'))

/* Primero rev médica, después ficha médica, después el salario y al final el empleado, despues podes agregar los que quieras */

INSERT INTO revmedica (codRevMedica, fecha, peso, altura, presionArterial, electrocardiograma, ASangre, AOrina, PHormonal, coefAud, observaciones)
VALUES 
(1236, '2023-01-15', 70.2, 1.75, '110', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'normal', 'sin observaciones'),
(1237, '2023-02-20', 82.5, 1.80, '130', 'sin irregularidades', 'anemia leve', 'sin irregularidades', 'sin irregularidades', 'normal', 'leve anemia detectada'),
(1238, '2023-03-18', 65.3, 1.65, '115', 'arritmia detectada', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'normal', 'revisar arritmia'),
(1239, '2023-04-22', 90.0, 1.85, '140', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'hipotiroidismo', 'normal', 'controlar hipotiroidismo'),
(1240, '2023-05-10', 77.7, 1.78, '125', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'leve', 'sin observaciones'),
(1241, '2023-06-15', 70.2, 1.75, '110', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'normal', 'sin observaciones'),
(1242, '2023-07-20', 82.5, 1.80, '130', 'sin irregularidades', 'anemia leve', 'sin irregularidades', 'sin irregularidades', 'normal', 'leve anemia detectada'),
(1243, '2023-08-18', 65.3, 1.65, '115', 'arritmia detectada', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'normal', 'revisar arritmia'),
(1244, '2023-09-22', 90.0, 1.85, '140', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'hipotiroidismo', 'normal', 'controlar hipotiroidismo'),
(1245, '2023-10-10', 77.7, 1.78, '125', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'sin irregularidades', 'leve', 'sin observaciones');

INSERT INTO fichamedica (tipoSangre, factorSangre, codRevMedica) VALUES
('A', '+', 1236),
('B', '-', 1237),
('AB', '+', 1238),
('O', '-', 1239),
('A', '+', 1240),
('B', '-', 1241),
('AB', '+', 1242),
('O', '-', 1243),
('A', '+', 1244),
('B', '-', 1245);

INSERT INTO salario (fecha, categoria, salarioNeto) values (CURDATE(), 'Operario', 300000),
(CURDATE(), 'Operario', 350000),
(CURDATE(), 'Operario', 370000),
(CURDATE(), 'Administrativo', 500000),
(CURDATE(), 'Gerente', 800000);


INSERT INTO empleado
(`nombre`, `apellido`, `fechaIngreso`, `fechaNac`, `lugarNac`, `sexo`, `estadoCivil`, 
`direccion`, `telefono`, `codLoc`, `codDep`, `codSalario`, `codFichaMedica`)
VALUES
("Lucía", "Gómez", "2023-05-15", "1998-05-15", "Hospital Padilla Tucumán", "Femenino", 
"Casado", "Av. Aconquija 123", "3815412480", 41, 1, (SELECT codSalario FROM salario WHERE categoria = "Administrativo" ORDER BY fecha DESC LIMIT 1), 12),
("Martín", "Rodríguez", "2022-10-20", "1995-10-20", "Hospital Centro Tucumán", "Masculino",
"Soltero", "Av. Roca 456", "3815412480", 42, 1, (SELECT codSalario FROM salario WHERE categoria = "Gerente" ORDER BY fecha DESC LIMIT 1), 13),
("Carla", "Fernández", "2021-12-25", "1990-12-25", "Hospital Este Tucumán", "Femenino",
"Casado", "Av. Belgrano 789", "3815412480", 43, 1, (SELECT codSalario FROM salario WHERE categoria = "Gerente" ORDER BY fecha DESC LIMIT 1), 14),
("Juan", "González", "2020-11-30", "1985-11-30", "Hospital Oeste Tucumán", "Masculino",
"Soltero", "Av. Mate de Luna 123", "3815412480", 44, 1, (SELECT codSalario FROM salario WHERE categoria = "Gerente" ORDER BY fecha DESC LIMIT 1), 15),
("María", "López", "2019-09-15", "1980-09-15", "Hospital Sur Tucumán", "Femenino",
"Casado", "Av. Alem 456", "3815412480", 45, 3, 3, 16),
("Pedro", "Martínez", "2018-08-20", "1975-08-20", "Hospital Norte Tucumán", "Masculino",
"Soltero", "Av. Salta 789", "3815412480", 46, 2, 3, 17),
("Laura", "Gómez", "2017-07-25", "1970-07-25", "Hospital Norte Tucumán", "Femenino",
"Casado", "Av. San Martín 123", "3815412480", 47, 2, 3, 18),
("Carlos", "Rodríguez", "2016-06-30", "1965-06-30", "Hospital Sur Tucumán", "Masculino",
"Soltero", "Av. Belgrano 456", "3815412480", 48, 2, 3, 19),
("Ana", "Fernández", "2015-05-05", "1960-05-05", "Hospital Este Tucumán", "Femenino",
"Casado", "Av. Mate de Luna 789", "3815412480", 49, 3, 3, 20),
("José", "González", "2014-04-10", "1955-04-10", "Hospital Oeste Tucumán", "Masculino",
"Soltero", "Av. Alem 123", "3815412480", 50, 4, 3, 21); 

/* Ejemplo de los que quieras: 
    - Idioma
    - accidente
    - educSec
    - educUniv
    - curso
*/

insert into idioma (codIdioma, nombre, codEmp) values
(1, 'English', (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(2, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(3, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(4, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
(5, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
(6, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Carla" AND apellido = "Fernández")),
(7, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Juan" AND apellido = "González")),
(8, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Pedro" AND apellido = "Martínez")),
(9, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Laura" AND apellido = "Gómez")),
(10, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Carlos" AND apellido = "Rodríguez")),
(11, 'English', (SELECT codEmp FROM empleado WHERE nombre = "María" AND apellido = "López")),
(12, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "María" AND apellido = "López")),
(13, 'Korean', (SELECT codEmp FROM empleado WHERE nombre = "José" AND apellido = "González")),
(14, 'English', (SELECT codEmp FROM empleado WHERE nombre = "José" AND apellido = "González")),
(15, 'Spanish', (SELECT codEmp FROM empleado WHERE nombre = "Ana" AND apellido = "Fernández")),
(16, 'Chinesee', (SELECT codEmp FROM empleado WHERE nombre = "Ana" AND apellido = "Fernández"));

insert into accidente (descripcion, fecha, codEmp) values
("Se lesionó el cerebro", CURDATE(), (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez"))
("Se le trabó la lengua", CURDATE(), (SELECT codEmp FROM empleado WHERE nombre = "José" AND apellido = "González"))
("Se rompió los ligamentos cruzados", CURDATE(), (SELECT codEmp FROM empleado WHERE nombre = "Ana" AND apellido = "Fernández"))

insert into curso (codCurso, nombre, fechaInicio, estado, fechaFin, codEmp) values
(1, "FullStack Developer", "2022-11-15", 'Finalizado', "2023-08-01", (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(2, "React Avanzado", "2024-05-10", 'En curso', NULL, (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(3, "Backend Avanzado", "2023-10-10", 'Finalizado', "2024-04-10", (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
(4, "FullStack Developer", "2022-11-15", 'Finalizado', "2023-08-01", (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
(5, "Azure Exam", "2024-05-10", 'En curso', NULL, (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
(6, "Angular PRO", "2023-10-10", 'Finalizado', "2024-04-10", (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
(7, "C# to Master", "2023-05-15", 'Finalizado', "2023-09-15", (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
(8, "FullStack Developer", "2022-11-15", 'Finalizado', "2023-08-01", (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
(9, "React Avanzado", "2024-05-10", 'En curso', NULL, (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
(10, "R - An introduction to good language", "2023-10-10", 'Finalizado', "2024-04-10", (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
(11, "Rust desde cero", "2023-05-15", 'Finalizado', "2023-09-15", (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
(12, "FullStack Developer", "2022-11-15", 'Finalizado', "2023-08-01", (SELECT codEmp FROM empleado WHERE nombre = "Carla" AND apellido = "Fernández"));

insert into educSec (institucion, estado, fechaFin, codEmp) values 
("San Calos Borromeo", "Finalizado", "2021-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Carla" AND apellido = "Fernández")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Juan" AND apellido = "González")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "María" AND apellido = "López")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Pedro" AND apellido = "Martínez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Laura" AND apellido = "Gómez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Carlos" AND apellido = "Rodríguez")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Ana" AND apellido = "Fernández")),
("Escuela Normal", "Finalizado", "2005-12-15", (SELECT codEmp FROM empleado WHERE nombre = "José" AND apellido = "González"));

insert into educUniv (institucion, titulo, fechaInicio, estado, fechaFin, codEmp) values
("UTN", "Ingeniería en Sistemas", "2015-03-15", "En curso", NULL, (SELECT codEmp FROM empleado WHERE nombre = "Francisco" AND apellido = "Perez")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Lucía" AND apellido = "Gómez")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Martín" AND apellido = "Rodríguez")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Carla" AND apellido = "Fernández")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Juan" AND apellido = "González")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "María" AND apellido = "López")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Pedro" AND apellido = "Martínez")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Laura" AND apellido = "Gómez")),
("UTN", "Ingeniería en Sistemas", "2015-03-15", "Finalizado", "2020-12-15", (SELECT codEmp FROM empleado WHERE nombre = "Carlos" AND apellido = "Rodríguez"));


INSERT INTO Proveedor (nombre, apellido, cuit, razonSocial, fechaAlta, direccion, mail, telefono, rankingStars, codLoc) VALUES
('Juan', 'González', '20-12345678-9', 'González S.A.', '2022-01-01', 'Av. Rivadavia 123', 'juan.gonzalez@example.com', '1234567890', '5', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('María', 'López', '27-98765432-1', 'López & Asociados', '2022-02-15', 'Calle San Martín 456', 'maria.lopez@example.com', '0987654321', '4', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('Pedro', 'Martínez', '30-24681357-4', 'Martínez Ltda.', '2022-03-10', 'Av. Belgrano 789', 'pedro.martinez@example.com', '9876543210', '3', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('Laura', 'Rodríguez', '23-13579246-7', 'Rodríguez SRL', '2022-04-20', 'Calle Mitre 321', 'laura.rodriguez@example.com', '0123456789', '2', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('Carlos', 'Gómez', '24-86420975-2', 'Gómez & Hijos', '2022-05-05', 'Av. Independencia 987', 'carlos.gomez@example.com', '9876543210', '1', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('Ana', 'Fernández', '26-97531024-3', 'Fernández SA', '2022-06-30', 'Calle San Juan 654', 'ana.fernandez@example.com', '0123456789', '5', (SELECT codLoc FROM localidad WHERE nombre = "Alderetes")),
('José', 'Pérez', '29-10293847-6', 'Pérez & Cía.', '2022-07-15', 'Av. Corrientes 321', 'jose.perez@example.com', '9876543210', '4', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Sofía', 'García', '22-56789012-5', 'García Ltda.', '2022-08-20', 'Calle Belgrano 654', 'sofia.garcia@example.com', '0123456789', '3', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Miguel', 'López', '25-67890123-4', 'López SRL', '2022-09-25', 'Av. Rivadavia 987', 'miguel.lopez@example.com', '9876543210', '2', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Carolina', 'Martínez', '28-31415926-3', 'Martínez & Asociados', '2022-10-30', 'Calle San Martín 789', 'carolina.martinez@example.com', '0123456789', '1', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Daniel', 'Rodríguez', '21-98765432-1', 'Rodríguez SA', '2022-11-05', 'Av. Belgrano 123', 'daniel.rodriguez@example.com', '9876543210', '5', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Florencia', 'Gómez', '24-13579246-7', 'Gómez Ltda.', '2022-12-10', 'Calle Mitre 456', 'florencia.gomez@example.com', '0123456789', '4', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Javier', 'Fernández', '27-86420975-2', 'Fernández & Hijos', '2023-01-15', 'Av. Independencia 321', 'javier.fernandez@example.com', '9876543210', '3', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Valentina', 'Pérez', '30-97531024-3', 'Pérez SA', '2023-02-20', 'Calle San Juan 789', 'valentina.perez@example.com', '0123456789', '2', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Andrés', 'García', '23-10293847-6', 'García & Cía.', '2023-03-25', 'Av. Corrientes 456', 'andres.garcia@example.com', '9876543210', '1', (SELECT codLoc FROM localidad WHERE nombre = "Yerba Buena")),
('Camila', 'López', '26-56789012-5', 'López Ltda.', '2023-04-30', 'Calle Belgrano 789', 'camila.lopez@example.com', '0123456789', '5', (SELECT codLoc FROM localidad WHERE nombre = "Famailla")),
('Lucas', 'Martínez', '29-67890123-4', 'Martínez SRL', '2023-05-05', 'Av. Rivadavia 321', 'lucas.martinez@example.com', '9876543210', '4', (SELECT codLoc FROM localidad WHERE nombre = "Famailla")),
('Martina', 'Rodríguez', '22-31415926-3', 'Rodríguez & Asociados', '2023-06-10', 'Calle San Martín 987', 'martina.rodriguez@example.com', '0123456789', '3', (SELECT codLoc FROM localidad WHERE nombre = "Famailla")),
('Alejandro', 'Gómez', '25-98765432-1', 'Gómez SA', '2023-07-15', 'Av. Belgrano 456', 'alejandro.gomez@example.com', '9876543210', '2', (SELECT codLoc FROM localidad WHERE nombre = "Famailla")),
('Isabella', 'Fernández', '28-13579246-7', 'Fernández Ltda.', '2023-08-20', 'Calle Mitre 789', 'isabella.fernandez@example.com', '0123456789', '1', (SELECT codLoc FROM localidad WHERE nombre = "Concepción")); 

INSERT INTO Cliente (nombre, apellido, tipoCliente, dni, codLoc) VALUES
('Juan', 'Pérez', 'Consumidor Final', '22334455', (SELECT codLoc FROM localidad WHERE nombre = 'Concepción')),
('María', 'López', 'Monotributista', '23344556', (SELECT codLoc FROM localidad WHERE nombre = 'Alderetes')),
('Carlos', 'García', 'Responsable Inscripto', '24455667', (SELECT codLoc FROM localidad WHERE nombre = 'Yerba Buena')),
('Lucía', 'Martínez', 'Consumidor Final', '25566778', (SELECT codLoc FROM localidad WHERE nombre = 'Concepción')),
('Fernando', 'Rodríguez', 'Monotributista', '26677889', (SELECT codLoc FROM localidad WHERE nombre = 'Alderetes')),
('Sofía', 'Hernández', 'Responsable Inscripto', '27788990', (SELECT codLoc FROM localidad WHERE nombre = 'Yerba Buena')),
('Gonzalo', 'López', 'Consumidor Final', '28899001', (SELECT codLoc FROM localidad WHERE nombre = 'Concepción')),
('Paula', 'González', 'Monotributista', '29900112', (SELECT codLoc FROM localidad WHERE nombre = 'Alderetes')),
('Roberto', 'Pérez', 'Responsable Inscripto', '30011223', (SELECT codLoc FROM localidad WHERE nombre = 'Yerba Buena')),
('Carmen', 'Sanchez', 'Consumidor Final', '31122334', (SELECT codLoc FROM localidad WHERE nombre = 'Concepción'));

