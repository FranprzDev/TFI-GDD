CREATE TABLE Sector ( 
    codSector INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50)
); 

CREATE TABLE Departamento (
    codDep INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50),
    codSector INT,
    FOREIGN KEY (codSector) REFERENCES Sector(codSector)
); 

CREATE TABLE Pais (
    codPais VARCHAR(3) PRIMARY KEY NOT NULL,
    nombre VARCHAR(30)
); 

CREATE TABLE Provincia (
    codProv INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    codPais VARCHAR(3),
    FOREIGN KEY (codPais) REFERENCES Pais(codPais)
);

CREATE TABLE Localidad (
    codLoc INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    codProv INT,
    FOREIGN KEY (codProv) REFERENCES Provincia(codProv)
);

CREATE TABLE Salario (
    codSalario INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    categoria ENUM('Operario', 'Administrativo', 'Gerente', 'Director'),
    salarioNeto DECIMAL(20, 2)
); 

CREATE TABLE RevMedica ( 
    codRevMedica INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    peso DECIMAL(5, 2),
    altura DECIMAL(5, 2),
    presionArterial VARCHAR(10),
    electrocardiograma VARCHAR(50),
    ASangre VARCHAR(50),
    AOrina VARCHAR(50),
    PHormonal VARCHAR(50),
    coefAud VARCHAR(50),
    observaciones VARCHAR(100)
); 

CREATE TABLE FichaMedica (
    codFichaMedica INT PRIMARY KEY AUTO_INCREMENT,
    tipoSangre VARCHAR(10),
    factorSangre VARCHAR(10),
    codRevMedica INT,
    FOREIGN KEY (codRevMedica) REFERENCES RevMedica(codRevMedica)
);

CREATE TABLE Empleado (
    codEmp INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fechaIngreso DATE,
    fechaNac DATE,
    lugarNac VARCHAR(50),
    sexo ENUM('Masculino', 'Femenino'),
    estadoCivil ENUM('Soltero', 'Casado', 'Divorciado', 'Viudo'),
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    codLoc INT,
    codDep INT,
    codSalario INT,
    codFichaMedica INT,
    FOREIGN KEY (codLoc) REFERENCES localidad(codLoc),
    FOREIGN KEY (codDep) REFERENCES departamento(codDep), 
    FOREIGN KEY (codSalario) REFERENCES salario(codSalario), 
    FOREIGN KEY (codFichaMedica) REFERENCES fichamedica(codFichaMedica)
);

CREATE TABLE Accidente (
    codAcc INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(100),
    fecha DATE,
    codEmp INT,
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

CREATE TABLE Curso (
    codCurso INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(70),
    fechaInicio DATE,
    estado ENUM('En curso', 'Finalizado'),
    fechaFin DATE NULL,
    codEmp INT,
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

CREATE TABLE EducSec (
    codEducSec INT PRIMARY KEY AUTO_INCREMENT,
    institucion VARCHAR(50),
    estado ENUM('En curso', 'Finalizado'),
    fechaFin DATE NULL,
    codEmp INT,
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

CREATE TABLE EducUniv (
    codEducUniv INT PRIMARY KEY AUTO_INCREMENT,
    institucion VARCHAR(50),
    titulo VARCHAR(50),
    fechaInicio DATE,
    estado ENUM('En curso', 'Finalizado'),
    fechaFin DATE NULL,
    codEmp INT,
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

CREATE TABLE Hijos (
    codHijo INT PRIMARY KEY AUTO_INCREMENT,
    escolaridad VARCHAR(50),
    discapacidad VARCHAR(50),
    codEmp INT,
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

CREATE TABLE Idioma (
    codIdioma INT PRIMARY KEY NOT NULL,
    nombre VARCHAR(50),
    codEmp INT, 
    FOREIGN KEY (codEmp) REFERENCES Empleado(codEmp)
);

