-- HealthOne Medical Database - Consultas de Ejemplo
-- Consultas útiles para reporting y análisis

-- 1. Lista de pacientes con su médico primario y seguro
SELECT 
    p.nombre AS paciente,
    p.telefono,
    m.nombre AS medico_primario,
    m.especialidad_principal,
    s.nombre_compania AS seguro
FROM pacientes p
LEFT JOIN medicos m ON p.id_medico_primario = m.id_medico
LEFT JOIN seguros s ON p.id_seguro = s.id_seguro;

-- 2. Conteo de pacientes por compañía de seguros
SELECT 
    s.nombre_compania AS seguro,
    COUNT(p.id_paciente) AS total_pacientes
FROM seguros s
LEFT JOIN pacientes p ON s.id_seguro = p.id_seguro
GROUP BY s.nombre_compania
ORDER BY total_pacientes DESC;

-- 3. Médicos y cantidad de pacientes asignados
SELECT 
    m.nombre AS medico,
    m.especialidad_principal,
    COUNT(p.id_paciente) AS pacientes_asignados
FROM medicos m
LEFT JOIN pacientes p ON m.id_medico = p.id_medico_primario
GROUP BY m.nombre, m.especialidad_principal
ORDER BY pacientes_asignados DESC;

-- 4. Pacientes mayores de 40 años
SELECT 
    nombre,
    fecha_nacimiento,
    EXTRACT(YEAR FROM AGE(fecha_nacimiento)) AS edad
FROM pacientes
WHERE EXTRACT(YEAR FROM AGE(fecha_nacimiento)) > 40
ORDER BY edad DESC;
