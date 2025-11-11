-- HealthOne Medical Database - Esquema Principal
-- Script de creación de tablas y relaciones

-- Tabla de Pacientes
CREATE TABLE pacientes (
    id_paciente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion TEXT,
    id_seguro INTEGER,
    id_medico_primario INTEGER,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Médicos
CREATE TABLE medicos (
    id_medico SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad_principal VARCHAR(50),
    telefono VARCHAR(20),
    email VARCHAR(100),
    numero_licencia VARCHAR(50) UNIQUE
);

-- Tabla de Seguros
CREATE TABLE seguros (
    id_seguro SERIAL PRIMARY KEY,
    nombre_compania VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion TEXT
);

-- Restricciones de llaves foráneas
ALTER TABLE pacientes 
ADD CONSTRAINT fk_paciente_seguro 
FOREIGN KEY (id_seguro) REFERENCES seguros(id_seguro);

ALTER TABLE pacientes
ADD CONSTRAINT fk_paciente_medico_primario
FOREIGN KEY (id_medico_primario) REFERENCES medicos(id_medico);
