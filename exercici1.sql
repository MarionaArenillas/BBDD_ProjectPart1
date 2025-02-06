-- Evelyn Aguayo, Mariona Arenillas, Alexandra Sofronie

-- Exercici 1: Creació de totes ñes taules del model relacional

-- crear BBDD 
CREATE DATABASE IF NOT EXISTS LSG_NBA 
DEFAULT CHARACTER SET 'utf8mb4' 
DEFAULT COLLATE 'utf8mb4_spanish_ci'; 

USE LSG_NBA;

-- Creació de la taula Persona: 
CREATE TABLE IF NOT EXISTS Persona (
    DNI VARCHAR(9) NOT NULL,
    Nom VARCHAR(30) NOT NULL,
    Cognom1 VARCHAR(30) NOT NULL,
    Cognom2 VARCHAR(30) NOT NULL,
    Nacionalitat VARCHAR(30) NOT NULL,
    Sexe ENUM('H', 'D', 'NB', 'ND') NOT NULL,
    DataNaixement DATE NOT NULL, 
    PRIMARY KEY(DNI), 
);

-- Creació de la taula Equip_Nacional
CREATE TABLE IF NOT EXISTS Equip_Nacional (
    Any INT(4), 
    Pais VARCHAR(30),
    PRIMARY KEY(Any, Pais)
); 

-- Creació de la taula Draft
CREATE TABLE IF NOT EXISTS Draft (
    Any_draft INT(4),
    PRIMARY KEY(Any_draft)
);

-- Creació de la taula Conferencia
CREATE TABLE IF NOT EXISTS Conferencia (
    Nom_Conferencia VARCHAR(30),
    ZonaGeografica VARCHAR(30) UNIQUE, 
    PRIMARY KEY(Nom_Conferencia)
);    

-- Creació de la taula franquicia
CREATE TABLE IF NOT EXISTS Franquicia (
    Nom_Franquicia VARCHAR(30), 
    Ciutat_franquicia VARCHAR(30),
    Pressupost_franquicia DECIMAL(15,2)
    AnellsNBA INT,
    DNI_Entrenador_Principal VARCHAR(9), 
    Nom_Pavello VARCHAR(30), 
    DNI_Propietari VARCHAR(9),
    Nom_Conferencia VARCHAR(30),
    PRIMARY KEY(Nom_Franquicia),
    FOREIGN KEY (Nom_Conferencia) REFERENCES Conferencia(Nom_Conferencia) ON DELETE RESTRICT ON UPDATE RESTRICT

);

-- Creació de la taula Jugador
CREATE TABLE IF NOT EXISTS Jugador (
    DNI_Jugador VARCHAR(9),
    AnysPRO INT(4),
    UniversitatOrigen VARCHAR(30),
    NombreAnellsNBA INT,
    Dorsal
    Nom_Franquicia VARCHAR(30),
    PRIMARY KEY(DNI_Jugador),
    FOREIGN KEY (DNI_Jugador) REFERENCES Persona(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Nom_Franquicia) REFERENCES Franquicia(Nom_Franquicia) ON DELETE SET NULL ON UPDATE CASCADE
);