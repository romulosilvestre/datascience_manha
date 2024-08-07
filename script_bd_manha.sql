-- DDL - Data Definition Language
	  -- Linguagem de Definição de Dados
DROP DATABASE projetodiario1;
CREATE DATABASE projetodiario1;
USE projetodiario1;

CREATE TABLE aluno(    
    id int primary key auto_increment,
    ra char(8) NOT NULL UNIQUE
); 
-- DML
INSERT INTO aluno(ra)VALUES('12345678');
INSERT INTO aluno(ra) VALUES('12345670');
INSERT INTO aluno(ra) VALUES('12345671');
INSERT INTO aluno(ra) VALUES('12345672');
INSERT INTO aluno(ra) VALUES('12345673');
INSERT INTO aluno(ra) VALUES('12345674');
INSERT INTO aluno(ra) VALUES('12345675');
INSERT INTO aluno(ra) VALUES('12345676');
INSERT INTO aluno(ra) VALUES('12345677');
INSERT INTO aluno(ra) VALUES('12345679');
INSERT INTO aluno(ra) VALUES('12345680');
INSERT INTO aluno(ra) VALUES('12345681');
INSERT INTO aluno(ra) VALUES('12345682');
INSERT INTO aluno(ra) VALUES('12345683');
INSERT INTO aluno(ra) VALUES('12345684');
INSERT INTO aluno(ra) VALUES('12345685');
INSERT INTO aluno(ra) VALUES('12345686');
INSERT INTO aluno(ra) VALUES('12345687');
INSERT INTO aluno(ra) VALUES('12345688');
INSERT INTO aluno(ra) VALUES('12345689');
INSERT INTO aluno(ra) VALUES('12345690');
INSERT INTO aluno(ra) VALUES('12345691');
INSERT INTO aluno(ra) VALUES('12345692');
INSERT INTO aluno(ra) VALUES('12345693');
INSERT INTO aluno(ra) VALUES('12345694');

truncate table aluno;
-- DQL
SELECT * FROM aluno;
SELECT id,ra FROM aluno;
SELECT ra as registro_academico,id FROM aluno;
DESCRIBE aluno;
show tables;

CREATE TABLE diariobordo (
    id int PRIMARY KEY auto_increment,
    texto text NOT NULL,
    datahora datetime NOT NULL,
    fk_aluno_id int NOT NULL
);
show tables;
 
ALTER TABLE diariobordo ADD CONSTRAINT FK_diariobordo_2
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
SELECT * FROM diariobordo;
SELECT * FROM aluno;
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('a aula foi legal',
                                      '2024-08-01 09:16:00',
                                       13);
INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert',
                                      '2024-08-01 09:33:00',
                                       24);
                                       INSERT diariobordo(texto,
                   datahora,
                   fk_aluno_id)VALUES('estou aprendendo insert de novo',
                                      '2024-08-01 09:33:00',
                                       24);
SELECT *  FROM diariobordo;
SELECT * FROM 
     diariobordo 
     JOIN 
	 aluno 
     ON diariobordo.fk_aluno_id = aluno.id;
SELECT
     d.texto,
     d.datahora,
     a.ra
     FROM 
     diariobordo d 
     JOIN 
	 aluno a 
     ON d.fk_aluno_id = a.id;

-- 01/08/2024
-- 50%
-- 06 set.
-- Popular o diário
-- SQLAlchemy - pra conexão com banco
-- Python e SQL
-- Pandas - pd.read_sql(sql)
-- MatplotLib
-- Dashboard


-- Exercício
-- Modelo Conceitual - crie uma nova entidade chamada avaliacao.
                                                      -- id pk
                                                      -- nota1 int
                                                      -- nota2 int
                                                      -- nota3 int
                                                      -- nota4 int
                                                      -- fk_aluno_id
-- Modelo Lógico
-- Modelo Físico (brModelo)
-- INSERTs de 5 alunos com as notas
-- SELECT * FROM avaliacao;
-- SELECT JOIN : tabela aluno com tabela avaliação.

