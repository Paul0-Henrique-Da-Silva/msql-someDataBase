USE zoologico;
CREATE TABLE cuidador(
cuidador_id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
gerente_id INT NOT NULL,
FOREIGN KEY (gerente_id) REFERENCES gerente(gerente_id)
);

INSERT INTO cuidador
(cuidador_id, nome, gerente_id)
VALUE
(11, 'Marcela Andrade', 3);

INSERT INTO cuidador 
(cuiador_id, nome, gerente_id)
VALUE
(12, 'Vinicios Vargs' , 1);