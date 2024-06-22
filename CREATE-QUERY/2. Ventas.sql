CREATE TABLE Cliente (
    codCliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    tipoCliente ENUM('Consumidor Final', 'Monotributista', 'Responsable Inscripto'), 
    dni CHAR(8),
    codLoc INT,
    FOREIGN KEY (codLoc) REFERENCES Localidad(codLoc)
);

CREATE TABLE Proveedor (
    codProveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    cuit CHAR(11),
    razonSocial VARCHAR(50),
    fechaAlta DATE,
    direccion VARCHAR(50),
    mail VARCHAR(40),
    telefono VARCHAR(20),
    rankingStars ENUM('1', '2', '3', '4', '5'),
    codLoc INT,
    FOREIGN KEY (codLoc) REFERENCES Localidad(codLoc)
);

CREATE TABLE Deposito (
    codDep INT PRIMARY KEY AUTO_INCREMENT,
    direccion VARCHAR(50),
    codLoc INT,
    FOREIGN KEY (codLoc) REFERENCES Localidad(codLoc)
);


CREATE TABLE Rubro (
    codRubro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    codProveedor INT,
    FOREIGN KEY (codProveedor) REFERENCES Proveedor(codProveedor)
);

CREATE TABLE Articulo (
    codArt INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    precioUnitario DECIMAL(20, 2),
    stock INT,
    codRubro INT,
    FOREIGN KEY (codRubro) REFERENCES Rubro(codRubro)
);

CREATE TABLE OrdenVenta (
    codOrden INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    codDep INT,
    FOREIGN KEY (codDep) REFERENCES Deposito(codDep)
);

CREATE TABLE Remito (
    codRemito INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    codDep INT,
    FOREIGN KEY (codDep) REFERENCES Deposito(codDep)
);


CREATE TABLE Pago (
    codPago INT PRIMARY KEY AUTO_INCREMENT,
    formaPago ENUM('Efectivo', 'Tarjeta de Crédito', 'Tarjeta de Débito', 'Transferencia Bancaria'),
    plazo ENUM('Contado', '30 días', '60 días', '90 días')
); 

CREATE TABLE DetalleFactura (
    codDetalle INT PRIMARY KEY AUTO_INCREMENT,
    importeBruto DECIMAL(20, 2),
    iva DECIMAL(20, 2),
    importeNeto DECIMAL(20, 2),
    cantidad INT,
    precioUnitario DECIMAL(20, 2),
    codArt INT,
    FOREIGN KEY (codArt) REFERENCES articulo(codArt)
); 