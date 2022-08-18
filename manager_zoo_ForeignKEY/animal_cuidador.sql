USE zoologico;
CREATE TABLE animal_cuidador(
animal_id INT,
cuidador_id INT,
CONSTRAINT PRIMARY KEY(animal_id, cuidador_id),
FOREIGN KEY (animal_id) REFERENCES animal (animal_id),
FOREIGN KEY (cuidador_id) REFERENCES cuidador (cuidador_id)
);

INSERT INTO animal_cuidador
(animal_id, cuidador_id)
VALUE
(13,11);

