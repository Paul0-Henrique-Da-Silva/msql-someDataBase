USE zoologico;
CREATE TABLE gerente(
 gerente_id INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(50) NOT NULL);
 
 INSERT INTO gerente 
  (gerente_id, nome)
  VALUE 
  (1, 'Jurandir machado');
  
  INSERT INTO gerente 
  (gerente_id, nome)
  VALUE
  (2, 'Iracema Duarte');
  
  INSERT INTO gerente
   (nome)
   VALUE
   ('Paulo Henrique')