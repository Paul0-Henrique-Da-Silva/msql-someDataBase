-- CREATE DATABASE tipos_dados; 
CREATE SCHEMA IF NOT EXISTS tipos_dados;
USE tipos_dados;
CREATE TABLE aluno (
	matricula  CHAR(15) NOT NULL, -- string
    nome VARCHAR(120) NOT NULL, -- string
    nome_social VARCHAR(80),	-- string
	semestre TINYINT, -- ou INT
    creditos_cursados SMALLINT, -- ou INT
    media_geral DECIMAL(4,2), -- ou DOUBLE.Não há limite para quatindade de digitos e casas decimais com Double
    data_ingresso DATE NOT NULL,
    ano YEAR,
    data_conclusao DATE,
    sexo ENUM('masculino', 'feminino'),
    bolsista BOOLEAN, -- ou TINYIT(1) DEFAULT NULL
    areas_interesse SET('Big Data', 'Bancos de dados', 'Desenvolvimento') 
	-- { como pode ser usado o SET 
    -- SELECT * FROM aluno WHERE find_in_set('Desenvolvimento', areas_interesse);
    -- * retorna todo os alunos das 'areas_interesse' em "Desenvolvimento"
    -- * pode inserir mais de uma informação em 'areas_interesse' em sua coluna de aluno/areas_interesse
    -- * sensivel ao espaço ao 'setar' }
);

INSERT INTO tipos_dados.aluno 
 (matricula, nome, nome_social , semestre, creditos_cursados, media_geral, data_ingresso, 
 ano, data_conclusao, sexo, bolsista, areas_interesse)
 VALUES
  (
   "HDSJIH4544BJ", -- matriculas
   "Paulo Henrique", -- nome
   "Paulinho", -- mome_social
    3, -- semestre
    56, -- creditos_cursados
    8.7, -- media_geral
    "2022-04-27", -- data_ingresso
    2022,
    NULL,
    'masculino',
    true,  -- bolsista
    'Bancos de dados,Desenvolvimento' -- areas_interesse
    
  );
  