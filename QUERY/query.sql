-- /*- Listar los artículos que tienen Stock mayor a 1000. Se debe mostrar, además, código,
-- descripción, depósito y stock de seguridad*/
-- SELECT *FROM ARTICULO
-- inner JOIN Deposito ON ARTICULO.codDep = Deposito.codDep
-- WHERE ARTICULO.stock > 1000;

-- /*- Listar los integrantes del Grupo Familiar de cada Empleado con su parentesco.*/

-- SELECT nombre,apellido,EstadoCivil, COUNT(Hijos.codHijo) AS cantHijos
-- FROM Empleado
-- LEFT JOIN Hijos ON Empleado.codEmp = Hijos.codEmp
-- GROUP BY Empleado.codEmp;

-- /*- Generar un informe en forma separada de todos los Clientes y Proveedores, con sus
-- respectivos datos de contacto, incluyendo Provincia de Residencia.*/

-- /*select nombre,apellido,numeroTel,correoElectronico from cliente
-- join localidad on cliente.codLoc=localidad.codLoc*/
-- SELECT 
--     c.nombre AS Nombre,
--     c.apellido AS Apellido,
--     c.numeroTel AS NumeroTel,
--     c.correoElectronico AS CorreoElectronico,
--     p.nombre AS Provincia
-- FROM Cliente c
-- JOIN Localidad l ON c.codLoc = l.codLoc
-- join provincia p on l.codProv = p.codProv;

-- SELECT 
--     c.nombre AS Nombre,
--     c.apellido AS Apellido,
--     c.telefono AS NumeroTel,
--     c.mail AS CorreoElectronico,
--     p.nombre AS Provincia
-- FROM Proveedor c
-- JOIN Localidad l ON c.codLoc = l.codLoc
-- join provincia p on l.codProv = p.codProv


-- -Listar todos los Empleados que tengan más de 10 años de antigüedad y sueldo menor a
-- $750.000.*/
-- select nombre,apellido,fechaIngreso,sueldoNeto from empleado
-- join liquidacion on empleado.idLiq=liquidacion.id
-- and  liquidacion.sueldoneto<750000 and YEAR(fechaIngreso) <= YEAR(CURDATE()) - 10;

-- - Con el resultado de la consulta anterior realizar un incremento de haberes a dichos
-- empleados del 35%.-

-- SET SQL_SAFE_UPDATES = 0;

-- UPDATE liquidacion
-- SET sueldoNeto = sueldoNeto * 1.35
-- WHERE id IN (
--     SELECT id
--     FROM empleado   
-- JOIN liquidacion ON empleado.idLiq = liquidacion.id
--     WHERE liquidacion.sueldoNeto < 750000
--       AND YEAR(fechaIngreso) <= YEAR(CURDATE()) - 10
-- );

-- select nombre,apellido,fechaIngreso,sueldoNeto from empleado
-- join liquidacion on empleado.idLiq=liquidacion.id
-- and  liquidacion.sueldoneto<750000 and YEAR(fechaIngreso) <= YEAR(CURDATE()) - 10;*/
