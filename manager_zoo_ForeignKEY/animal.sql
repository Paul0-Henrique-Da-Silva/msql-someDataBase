DROP SCHEMA IF EXISTS zoologico;
CREATE SCHEMA zoologico;
USE zoologico;

CREATE TABLE animal (
  animal_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  especie VARCHAR(50) NOT NULL,
  sexo VARCHAR(15) NOT NULL,
  idade INT NOT NULL,
  localizacao VARCHAR(50) NOT NULL
  );
  
  INSERT INTO animal 
    (animal_id, nome, especie, sexo, idade, localizacao)
    VALUE
    (12, 'Alex', 'Leâo', 'masculino', 17, 'São Paulo');
    
    INSERT INTO animal 
    (animal_id, nome, especie, sexo, idade, localizacao)  
    VALUE 
    (13, 'Glória', 'Hipópotamo', 'feminino', 19, 'Rio de Janeiro');
    
	INSERT INTO animal 
    (animal_id, nome, especie, sexo, idade, localizacao)  
    VALUE
    (14, 'Lito', 'Hasmiter', 'masculino', 1, 'Párana');
   
	INSERT INTO animal 
    (animal_id, nome, especie, sexo, idade, localizacao)  
     VALUE
     (15, 'Laila', 'Jacaré', 'feminino', 15, 'Espirito Santo');
   