# Sistema de Gestión de Intercambio de Habilidades

Este proyecto consiste en el diseño e implementación de una base de datos relacional para gestionar un sistema de intercambio de habilidades entre miembros. Se ha modelado un conjunto de entidades y relaciones que permiten registrar miembros, habilidades, sesiones de intercambio y valoraciones. El objetivo es demostrar un enfoque estructurado en modelado de datos, consultas avanzadas y documentación técnica.

## Estructura del Proyecto

El repositorio está organizado de la siguiente manera:

- `sql/`: Contiene los scripts SQL para la creación de la base de datos, carga de datos de prueba y consultas analíticas.
- `docs/`: Incluye diagramas de la base de datos y documentación técnica.
- `notebooks/`: Contiene análisis exploratorio de los datos utilizando SQL en Jupyter Notebook.

Este proyecto fue desarrollado con fines de aprendizaje y práctica, enfocándose en la aplicación de buenas prácticas en diseño de bases de datos y análisis de datos mediante SQL.

## Instalación y Uso

Para ejecutar el proyecto:

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/usuario/skill-exchange-db.git
   ```
2. Cargar el esquema de la base de datos en un entorno compatible con SQLite o PostgreSQL utilizando el script `sql/club_intercambio_create_tables.sql`.
3. Si se desea utilizar datos de prueba, ejecutar el script `sql/club_intercambio_insert_data.sql`.

## Modelo de Datos

La base de datos ha sido diseñada para capturar las interacciones dentro del sistema de intercambio de habilidades. Se compone de cinco tablas principales:

- `Miembro`: Registra a los participantes del sistema.
- `Habilidad`: Almacena las habilidades disponibles para intercambio.
- `Sesion`: Representa una sesión de enseñanza entre un miembro con rol de maestro y otro con rol de aprendiz.
- `Valoracion`: Permite registrar comentarios y puntuaciones de sesiones pasadas.
- `Miembro_Habilidad`: Relaciona a los miembros con sus habilidades declaradas.

Un modelo entidad-relación detallado se encuentra en `docs/MER.png`, junto con un modelo relacional en `docs/Modelo_Relacional.png` . También se proporciona el modelo en formato DBML en [`docs/skill-exchange.dbml` ](https://dbdiagram.io/d/67ebe8e54f7afba184f2de20) para su visualización y modificación en [dbdiagram.io](https://dbdiagram.io).

## Consultas SQL y Análisis de Datos

El conjunto de consultas incluidas en el repositorio ha sido diseñado para responder preguntas de negocio relevantes dentro del contexto del sistema. A continuación, se muestra un ejemplo:

**Identificación de habilidades con mayor demanda**

```sql
SELECT h.nombre, COUNT(*) AS sesiones
FROM Sesion s
JOIN Habilidad h ON s.id_habilidad = h.id_habilidad
GROUP BY h.nombre
ORDER BY sesiones DESC
LIMIT 5;
```

Esta consulta permite identificar las habilidades más solicitadas en el sistema, información que podría ser utilizada para optimizar la oferta de sesiones y mejorar la experiencia de los usuarios.

El archivo `docs/analysis_report.md` contiene un análisis detallado de las consultas implementadas y sus implicaciones en la toma de decisiones dentro del sistema.

## Consideraciones Finales

Este proyecto fue desarrollado como una práctica para aplicar conocimientos en modelado de bases de datos, SQL avanzado y análisis de datos en un contexto simulado. No representa un sistema en producción, pero sigue principios estructurados y buenas prácticas en organización y documentación.


## Licencia

Este proyecto está disponible bajo la licencia MIT, permitiendo su uso y modificación con fines educativos o profesionales.

