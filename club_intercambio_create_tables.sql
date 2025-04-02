
PRAGMA foreign_keys=ON;

CREATE TABLE Miembro (
  id_miembro INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE Habilidad (
  id_habilidad INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(60) NOT NULL,
  categoria VARCHAR(40) NOT NULL
);

CREATE TABLE Sesion (
  id_sesion INTEGER PRIMARY KEY AUTOINCREMENT,
  fecha DATETIME NOT NULL,
  id_habilidad INTEGER NOT NULL,
  id_maestro INTEGER NOT NULL,
  id_aprendiz INTEGER NOT NULL,
  FOREIGN KEY (id_habilidad) REFERENCES Habilidad(id_habilidad),
  FOREIGN KEY (id_maestro) REFERENCES Miembro(id_miembro),
  FOREIGN KEY (id_aprendiz) REFERENCES Miembro(id_miembro),
  CHECK (id_maestro != id_aprendiz)
);

CREATE TABLE Valoracion (
  id_valoracion INTEGER PRIMARY KEY AUTOINCREMENT,
  comentario VARCHAR(200) NOT NULL,
  puntuacion INTEGER NOT NULL CHECK (puntuacion BETWEEN 1 AND 5),
  id_sesion INTEGER NOT NULL,
  id_evaluador INTEGER NOT NULL,
  FOREIGN KEY (id_sesion) REFERENCES Sesion(id_sesion),
  FOREIGN KEY (id_evaluador) REFERENCES Miembro(id_miembro)
);

CREATE TABLE Miembro_Habilidad (
  id_miembro INTEGER NOT NULL,
  id_habilidad INTEGER NOT NULL,
  PRIMARY KEY (id_miembro, id_habilidad),
  FOREIGN KEY (id_miembro) REFERENCES Miembro(id_miembro),
  FOREIGN KEY (id_habilidad) REFERENCES Habilidad(id_habilidad)
);
