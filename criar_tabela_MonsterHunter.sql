CREATE DATABASE MonsterHunter;
USE MonsterHunter;

CREATE TABLE Monstros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fraquezas VARCHAR(200),
    resistencias VARCHAR(200),
    habitat VARCHAR(100),
    drop_materiais VARCHAR(300)
);
        

CREATE TABLE Armas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    ataque INT,
    elemento VARCHAR(50),
    afinidade INT,
    id_monstro INT,
    FOREIGN KEY (id_monstro) REFERENCES Monstros(id) 
);


CREATE TABLE Armaduras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    defesa INT,
    resistencia_elemental VARCHAR(100),
    habilidades VARCHAR(200),
    id_monstro INT,
    FOREIGN KEY (id_monstro) REFERENCES Monstros(id) 
);


CREATE TABLE Itens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    raridade INT
);


CREATE TABLE Quests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    id_monstro INT,
    quantidade INT,
    tempo_maximo INT,
    FOREIGN KEY (id_monstro) REFERENCES Monstros(id) 
);


SHOW TABLES;
