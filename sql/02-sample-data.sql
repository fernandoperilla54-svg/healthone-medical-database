-- HealthOne Medical Database - Datos de Ejemplo
-- Datos de prueba para testing y demostración

-- Insertar compañías de seguros
INSERT INTO seguros (nombre_compania, telefono, email) VALUES
('Seguros Médicos Nacionales', '+57-1-1234567', 'contacto@segurosmedicos.com'),
('Salud Total EPS', '+57-1-7654321', 'info@saludtotal.com'),
('MediCare Internacional', '+57-1-5551234', 'servicio@medicare.com');

-- Insertar médicos
INSERT INTO medicos (nombre, especialidad_principal, telefono, numero_licencia) VALUES
('Dr. Carlos Rodríguez', 'Cardiología', '+57-3001112233', 'LIC-CARD-001'),
('Dra. María González', 'Pediatría', '+57-3004445566', 'LIC-PED-002'),
('Dr. Javier López', 'Medicina General', '+57-3007778899', 'LIC-MG-003');

-- Insertar pacientes
INSERT INTO pacientes (nombre, fecha_nacimiento, telefono, id_seguro, id_medico_primario) VALUES
('Ana García', '1985-03-15', '+57-3001234567', 1, 1),
('Luis Martínez', '1978-07-22', '+57-3002345678', 2, 2),
('Carmen Díaz', '1990-11-30', '+57-3003456789', 1, 3);

-- Mensaje de confirmación
SELECT 'Datos de ejemplo insertados correctamente' AS mensaje;
