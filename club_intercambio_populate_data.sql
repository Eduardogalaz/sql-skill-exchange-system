
-- Iniciar transacción para asegurar integridad
BEGIN TRANSACTION;

-- Insertar 10 miembros
INSERT INTO Miembro (nombre, email, telefono) VALUES
('Ana López', 'ana.lopez@email.com', '+525512345678'),
('Carlos Ruiz', 'carlos.ruiz@email.com', '+525598765432'),
('María García', 'maria.garcia@email.com', '+525555555555'),
('Pedro Martínez', 'pedro.martinez@email.com', '+525511112222'),
('Luisa Fernández', 'luisa.fernandez@email.com', '+525533334444'),
('Jorge Sánchez', 'jorge.sanchez@email.com', '+525577776666'),
('Sofía Ramírez', 'sofia.ramirez@email.com', '+525588889999'),
('Miguel Torres', 'miguel.torres@email.com', '+525500001111'),
('Elena Castro', 'elena.castro@email.com', '+525522223333'),
('David Vargas', 'david.vargas@email.com', '+525544445555');

-- Insertar habilidades
INSERT INTO Habilidad (nombre, categoria) VALUES
('Python', 'Programación'),
('Fotografía Digital', 'Arte'),
('Cocina Italiana', 'Gastronomía'),
('Guitarra Acústica', 'Música'),
('Jardinería Orgánica', 'Hogar'),
('Inglés Avanzado', 'Idiomas'),
('Diseño Gráfico', 'Arte Digital'),
('Yoga', 'Bienestar'),
('Marketing Digital', 'Negocios'),
('Carpintería Básica', 'Manualidades');

-- Asignar habilidades a miembros
INSERT INTO Miembro_Habilidad (id_miembro, id_habilidad) VALUES
(1, 1), (1, 3),
(2, 2), (2, 6),
(3, 4), (3, 8),
(4, 5), (4, 10),
(5, 7), (5, 9),
(6, 1), (6, 6),
(7, 3), (7, 5),
(8, 2), (8, 4),
(9, 8), (9, 9),
(10, 7), (10, 10);

-- Crear sesiones de intercambio
INSERT INTO Sesion (fecha, id_habilidad, id_maestro, id_aprendiz) VALUES
('2023-05-10 14:00:00', 1, 1, 2),
('2023-05-11 16:00:00', 2, 2, 3),
('2023-05-12 10:00:00', 3, 7, 1),
('2023-05-13 11:00:00', 4, 3, 4),
('2023-05-14 15:00:00', 5, 4, 5),
('2023-05-15 17:00:00', 6, 2, 6),
('2023-05-16 09:00:00', 7, 5, 7),
('2023-05-17 18:00:00', 8, 9, 8),
('2023-05-18 19:00:00', 9, 5, 9),
('2023-05-19 20:00:00', 10, 10, 4);

-- Agregar valoraciones a las sesiones
INSERT INTO Valoracion (comentario, puntuacion, id_sesion, id_evaluador) VALUES
('Excelente explicación, muy paciente', 5, 1, 2),
('Buen contenido pero algo rápido', 4, 1, 1),
('Dominio impresionante del tema', 5, 2, 3),
('Clara y organizada', 5, 3, 1),
('Me costó seguir el ritmo', 3, 4, 4),
('Aprendí mucho, muy práctico', 5, 5, 5),
('Explicaciones muy técnicas', 4, 6, 6),
('Creativa y con buenos ejemplos', 5, 7, 7),
('Ambiente muy relajante', 5, 8, 8),
('Podría mejorar la organización', 3, 9, 9),
('Preciso y con buenos tips', 4, 10, 4);


COMMIT;
