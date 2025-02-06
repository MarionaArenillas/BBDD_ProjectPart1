-- Evelyn Aguayo, Mariona Arenillas, Alexandra Sofronie

-- Exercici 1: Creació de totes ñes taules del model relacional

-- crear BBDD 
CREATE DATABASE IF NOT EXISTS LSG_NBA 
DEFAULT CHARACTER SET 'utf8mb4' 
DEFAULT COLLATE 'utf8mb4_spanish_ci'; 

-- Creació de la taula Persona: 
CREATE TABLE IF NOT EXISTS Persona (
    DNI VARCHAR(9),
    Nom VARCHAR(20),
    Cognom1 VARCHAR(20),
    Cognom2 VARCHAR(20),
    Nacionalitat VARCHAR(20),
    Sexe VARCHAR(10),
    DataNaixement DATE, 
    PRIMARY KEY(DNI), 
);

