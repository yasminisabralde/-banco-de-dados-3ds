CREATE TABLE professores (
    id_professor INT  AUTO_INCREMENT PRIMARY KEy,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    especialidade VARCHAR(50)
);

CREATE TABLE disciplinas (
    id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(100) NOT NULL,
    carga_horaria INT,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    cpf VARCHAR(11) UNIQUE NOT NULL
);

CREATE TABLE matriculas (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_disciplina INT,
    data_matricula TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);
