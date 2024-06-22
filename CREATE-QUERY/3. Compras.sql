CREATE TABLE OrdenCompra (
    codOrdenCompra INT PRIMARY KEY AUTO_INCREMENT,
    estado ENUM('Pedido', 'Enviado', 'Entregado'),
    codDep INT,
    FOREIGN KEY (codDep) REFERENCES Deposito(codDep)
);

CREATE TABLE Factura (
    codFact INT PRIMARY KEY AUTO_INCREMENT,
    importeTotal DECIMAL(20, 2),
    fecha DATE,
    codCliente INT,
    codOrden INT,
    codOrdenCompra INT,
    codDetalle INT,
    codRemito INT,
    codPago INT,
    FOREIGN KEY (codCliente) REFERENCES Cliente(codCliente),
    FOREIGN KEY (codOrden) REFERENCES OrdenVenta(codOrden),
    FOREIGN KEY (codOrdenCompra) REFERENCES OrdenCompra(codOrdenCompra),
    FOREIGN KEY (codDetalle) REFERENCES DetalleFactura(codDetalle),
    FOREIGN KEY (codRemito) REFERENCES Remito(codRemito),
    FOREIGN KEY	(codPago) REFERENCES Pago(codPago)
); 