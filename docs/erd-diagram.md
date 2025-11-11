# Diagrama ERD - HealthOne Medical Database

## Descripción del Diagrama Entidad-Relación

### Entidades Principales
1. **Pacientes** - Información demográfica e historial médico
2. **Médicos** - Datos de proveedores y especialidades  
3. **Hospitales** - Instituciones médicas afiliadas
4. **Seguros** - Compañías aseguradoras
5. **Consultas** - Visitas médicas (con supertipos/subtipos)
6. **Medicamentos** - Fármacos y prescripciones

### Relaciones Clave
- Pacientes ↔ Médicos (Relación N:1 - Médico primario)
- Médicos ↔ Hospitales (Relación M:N - Afiliaciones)
- Pacientes ↔ Seguros (Relación N:1 - Aseguradora)
- Consultas → Pacientes & Médicos (Registro de visitas)

### Características Técnicas
- Normalización 3FN aplicada
- 12 entidades interrelacionadas
- Supertipos/subtipos para tipos de consulta
- Relaciones recursivas para seguros familiares
- Datos históricos de médicos primarios

---

*Diagrama diseñado bajo estándares HL7/FHIR para el sector salud*
