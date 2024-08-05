CREATE TABLE Alunos (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE Escolas (
    escola_id INT PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY,
    idioma VARCHAR(50),
    escola_id INT,
    aluno_id INT,
    FOREIGN KEY (escola_id) REFERENCES Escolas(escola_id),
    FOREIGN KEY (aluno_id) REFERENCES Alunos(aluno_id)
);

INSERT INTO Alunos (aluno_id, nome) VALUES
(1, 'Hirai Momo'),
(2, 'Minatozaki Sana'),
(3, 'Myoui Mina');

INSERT INTO Escolas (escola_id, nome) VALUES
(1, 'Escola A'),
(2, 'Escola B'),
(3, 'Escola C');

INSERT INTO Aulas (aula_id, idioma, escola_id, aluno_id) VALUES
(1, 'Inglês', 1, 1),
(2, 'Espanhol', 2, 2),
(3, 'Francês', 3, 3),
(4, 'Inglês', 2, 3),
(5, 'Espanhol', 1, 1),
(6, 'Francês', 2, 2);
