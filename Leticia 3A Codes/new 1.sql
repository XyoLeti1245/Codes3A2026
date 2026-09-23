/* === Criação de Base de Dados === */
CREATE DATABASE escola_tecnica;
USE escola_tecnica

/* --- Criação de Tabelas na Base de Dados ---*/
CREATE TABLE curso ( 
 cod_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nome_curso VARCHAR(100) NOT NULL,
 sigla CHAR(10) UNIQUE,
 carga_hs SMALLINT CHECK (carga_hs > 0),
 duracao_meses TINYINT CHECK (duracao_meses > 0),
 descricao TEXT,             /* Programação do curso */
 ativo BOOLEAN DEFAULT TRUE, /* Se o Curso está ativo */
 data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP);
 
 CREATE TABLE disciplina (
 cod_disciplina INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 