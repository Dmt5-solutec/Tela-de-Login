--
-- File generated with SQLiteStudio v3.4.4 on qua jul 17 10:58:41 2024
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Alunos
CREATE TABLE IF NOT EXISTS Alunos (
    matricula      INTEGER PRIMARY KEY ASC AUTOINCREMENT
                           NOT NULL,
    serie          TEXT    REFERENCES Turmas (serie) 
                           NOT NULL,
    nome           TEXT    NOT NULL,
    dataNascimento NUMERIC NOT NULL,
    genero         TEXT    NOT NULL,
    anoEntrada     INTEGER
);

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       1,
                       'bercario 1',
                       'Alex Castiel Alves Martins',
                       '06.07.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       2,
                       'bercario 1',
                       'Ana Sofia Francisco Correa',
                       '01.06.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       3,
                       'bercario 1',
                       'Aurora Vasconcelos Da Silva',
                       '18.08.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       4,
                       'bercario 1',
                       'Helena Bittencourt Rodrigues',
                       '17.11.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       5,
                       'bercario 1',
                       'Isis Ferreira Macedo De Araújo',
                       '13.08.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       6,
                       'bercario 1',
                       'João Vicente Rodrigues',
                       '11.11.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       7,
                       'bercario 1',
                       'Laura Maria Melo Vieira',
                       '13.08.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       8,
                       'bercario 1',
                       'Maria Julia De Sousa Porto',
                       '22.06.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       9,
                       'bercario 1',
                       'Maria Lara Nascimento Dos Santos',
                       '08.06.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       10,
                       'bercario 1',
                       'Maria Luz Rodrigues Melo',
                       '31.07.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       11,
                       'bercario 1',
                       'Martin Oliveira Santino',
                       '12.06.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       12,
                       'bercario 1',
                       'Pedro Barbosa De Sousa',
                       '19.09.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       13,
                       'bercario 1',
                       'Rubia Brandão Ferreira',
                       '12.08.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       14,
                       'bercario 1',
                       'Sther Sousa Rodrigues',
                       '23.06.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       15,
                       'bercario 2',
                       'Agatha Gomes De Souza',
                       '11.03.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       16,
                       'bercario 2',
                       'Ana Vitória Martins Fonseca',
                       '20.09.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       17,
                       'bercario 2',
                       'Anthony Valentin Campos Ribeiro',
                       '19.04.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       18,
                       'bercario 2',
                       'Aryella Victoria Bruno Dos Santos',
                       '29.11.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       19,
                       'bercario 1',
                       'Aylla Da Silva Dos Santos',
                       '30.11.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       20,
                       'bercario 2',
                       'Dandara Souza Gomes',
                       '31.05.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       21,
                       'bercario 2',
                       'Helena De Oliveira Tangarife',
                       '27.02.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       22,
                       'bercario 1',
                       'Hendrick De Oliveira Costa Dias',
                       '14.02.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       23,
                       'bercario 2',
                       'Isadora Silva De Lima',
                       '06.12.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       24,
                       'bercario 2',
                       'Jessica Ohana Rocha Rodrigues',
                       '20.04.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       25,
                       'bercario 2',
                       'Lara Sophia De Araujo Piropo',
                       '01.08.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       26,
                       'bercario 2',
                       'Maria Helena Souza Marinho',
                       '12.07.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       27,
                       'bercario 2',
                       'Morena Eloá Silva Faustino',
                       '08.02.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       28,
                       'bercario 2',
                       'Murilo Henrique Silva',
                       '02.06.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       29,
                       'bercario 2',
                       'Pérola Mariano Lima',
                       '01.08.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       30,
                       'bercario 2',
                       'Theo Dos Santos Almeida',
                       '10.03.23',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       31,
                       'bercario 2',
                       'Wallentina Da Silva Tavares',
                       '23.05.23',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       32,
                       'bercario 3',
                       'Aléxia Vitória Do Nascimento Penha De Albuquerque',
                       '15.06.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       33,
                       'bercario 3',
                       'Allison Napoleão Da Silva',
                       '28.03.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       34,
                       'bercario 3',
                       'Antonella Marinho Teixeira Sousa',
                       '09.03.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       35,
                       'bercario 3',
                       'Aurora Wanderley Da Silva Alves De Oliveira',
                       '06.05.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       36,
                       'bercario 3',
                       'Aylla Beatriz Cabral Dos Santos Morais',
                       '23.06.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       37,
                       'bercario 3',
                       'Benício Marinho Teixeira Sousa',
                       '09.03.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       38,
                       'bercario 3',
                       'Gael Costa Dos Santos',
                       '04.05.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       39,
                       'bercario 3',
                       'Gustavo Teodoro Da Silva',
                       '01.06.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       40,
                       'bercario 3',
                       'Isaac Modesto De Menezes',
                       '15.06.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       41,
                       'bercario 3',
                       'Ísis Audeth Santos',
                       '24.02.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       42,
                       'bercario 3',
                       'Lauane Silva Cid',
                       '09.06.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       43,
                       'bercario 3',
                       'Laura Vitória Da Silva Nascimento',
                       '15.05.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       44,
                       'bercario 3',
                       'Maya Melo Viana',
                       '31.05.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       45,
                       'bercario 3',
                       'Muryllo Pessôa De Jesus Barreira',
                       '05.07.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       46,
                       'bercario 3',
                       'Pilar Fonseca De Souza',
                       '08.04.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       47,
                       'bercario 3',
                       'Ravi Luiz Gomes Carvalho',
                       '23.04.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       48,
                       'bercario 3',
                       'Taliyah Dos Santos Rangel',
                       '24.02.22',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       49,
                       'maternal 1',
                       'Agatha Da Conceição Silva',
                       '25.04.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       50,
                       'maternal 1',
                       'Antonella Da Silva Martins',
                       '23.04.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       51,
                       'maternal 1',
                       'Arthur Ribeiro De Almeida',
                       '17.02.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       52,
                       'maternal 1',
                       'Ashley Cristine Martins Xavier',
                       '03.06.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       53,
                       'maternal 1',
                       'Benjamin Ribeiro De Sousa',
                       '26.06.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       54,
                       'maternal 1',
                       'Bernardo Alves Sobreiro Dos Santos',
                       '14.07.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       55,
                       'maternal 1',
                       'Bernardo Teixeira De Sousa',
                       '14.05.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       56,
                       'maternal 1',
                       'Bryan Custódio Santos',
                       '02.04.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       57,
                       'maternal 1',
                       'Kaleb Souza Machado De Moraes',
                       '18.01.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       58,
                       'maternal 1',
                       'Kauan Alves Gomes',
                       '25.06.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       59,
                       'maternal 1',
                       'Kauê Ronald Moraes Da Silva',
                       '30.04.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       60,
                       'maternal 1',
                       'Kevin Alves Gomes',
                       '25.06.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       61,
                       'maternal 1',
                       'Lauan Lourenço De Sousa',
                       '10.04.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       62,
                       'maternal 1',
                       'Lauany Victoria Souza',
                       '14.07.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       63,
                       'maternal 1',
                       'Loren Oliveira Valério Do Nascimento',
                       '18.06.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       64,
                       'maternal 1',
                       'Maria Flor Tavares Medina',
                       '05.08.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       65,
                       'maternal 1',
                       'Miguel Do Espírito Santo Monteiro',
                       '27.01.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       66,
                       'maternal 1',
                       'Otávio Paiva Mendes',
                       '17.02.22',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       67,
                       'maternal 1',
                       'Pérola Maria Oliveira Barnabé Da Silva',
                       '26.03.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       68,
                       'maternal 1',
                       'Ravi Gomes Bernardes',
                       '07.12.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       69,
                       'maternal 1',
                       'Ravi Martins De Sousa',
                       '16.04.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       70,
                       'maternal 1',
                       'Sofia Gabriela De Souza Gaby',
                       '27.06.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       71,
                       'maternal 1',
                       'Théo Fortunato De Almeida Marinho',
                       '25.05.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       72,
                       'maternal 2',
                       'Ana Luyza Ferreira Barcelos',
                       '08.11.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       73,
                       'maternal 2',
                       'André Ryan Oliveira Da Silva Rezende',
                       '30.05.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       74,
                       'maternal 2',
                       'Anthony Marinho Teixeira',
                       '01.09.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       75,
                       'maternal 2',
                       'Antonella Franco Da Silva Barbosa',
                       '07.08.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       76,
                       'maternal 2',
                       'Apolo Mesquita De Carvalho',
                       '02.05.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       77,
                       'maternal 2',
                       'Bruno Rodrigues De Souza',
                       '12.05.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       78,
                       'maternal 2',
                       'Cauã Nogueira Costa',
                       '16.02.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       79,
                       'maternal 2',
                       'Danilo Costa Santos Soares Da Silva',
                       '26.05.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       80,
                       'maternal 2',
                       'Davi Rocha Santos',
                       '14.04.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       81,
                       'maternal 2',
                       'Gustavo Alves Lima',
                       '18.10.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       82,
                       'maternal 2',
                       'Hektor De Araújo Silva',
                       '08.03.21',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       83,
                       'maternal 2',
                       'Isaac Soares De Souza',
                       '11.11.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       84,
                       'maternal 2',
                       'Ísis Mendes Da Silva',
                       '26.02.21',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       85,
                       'maternal 2',
                       'Laura De Souza Ramos',
                       '03.07.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       86,
                       'maternal 2',
                       'Maya Gomes De Souza',
                       '06.08.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       87,
                       'maternal 2',
                       'Miguel Gonçalves Nascimento Penha',
                       '12.12.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       88,
                       'maternal 2',
                       'Moanna Martins De Oliveira',
                       '19.10.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       89,
                       'maternal 2',
                       'Myrelle Emanuelle Alves Gonçalves',
                       '08.10.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       90,
                       'maternal 2',
                       'Nicolas Roberto Mendes Dos Santos Ribeiro',
                       '31.07.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       91,
                       'maternal 2',
                       'Pietro Leonardo Marques Pimentel',
                       '04.09.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       92,
                       'maternal 2',
                       'Raylla Campos De Aguiar',
                       '10.11.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       93,
                       'maternal 2',
                       'Sophia Eduarda Teixeira Peçanha',
                       '23.09.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       94,
                       'maternal 2',
                       'Wanni Vitória Da Silva Rodrigues',
                       '21.04.20',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       95,
                       'pre 1',
                       'Adhara Da Silva Paiva',
                       '25.05.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       96,
                       'pre 1',
                       'Arthur Miguel De Albuquerque Dos Santos',
                       '14.06.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       97,
                       'pre 1',
                       'Arthur Bruno Bibiano Nogueira',
                       '17.07.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       98,
                       'pre 1',
                       'Arthur Luiz Cabral De Paiva',
                       '28.07.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       99,
                       'pre 1',
                       'Ayla De Alencar Lima',
                       '11.06.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       100,
                       'pre 1',
                       'Aylla Valentina Campos Ribeiro',
                       '21.05.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       101,
                       'pre 1',
                       'Bernardo Araújo Do Nascimento',
                       '15.04.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       102,
                       'pre 1',
                       'Bernardo De Lima Moura',
                       '09.01.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       103,
                       'pre 1',
                       'Caleb Emanuel Martins Xavier',
                       '19.04.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       104,
                       'pre 1',
                       'Davi Miguel De Sousa',
                       '12.08.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       105,
                       'pre 1',
                       'Isabela Sousa Feitosa',
                       '14.07.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       106,
                       'pre 1',
                       'José Barros Agostinho Rogélio',
                       '18.01.20',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       107,
                       'pre 1',
                       'Laura Miranda De Oliveira',
                       '14.07.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       108,
                       'pre 1',
                       'Lúcio Ribeiro Dos Santos',
                       '11.04.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       109,
                       'pre 1',
                       'Maitê Andrade Dos Santos',
                       '04.06.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       110,
                       'pre 1',
                       'Maitê Rocha Do Espírito Santo',
                       '01.05.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       111,
                       'pre 1',
                       'Maria Júlia Da Silva Santos',
                       '19.11.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       112,
                       'pre 1',
                       'Maria Julia Dutra Moreira',
                       '08.06.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       113,
                       'pre 1',
                       'Maria Laura Lima Braga',
                       '12.11.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       114,
                       'pre 1',
                       'Maria Valentina Ramos Da Silva Alves',
                       '30.04.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       115,
                       'pre 1',
                       'Pedro Henrique Oliveira Albuquerque',
                       '04.05.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       116,
                       'pre 1',
                       'Pollyana Alice De Oliveira Belo Napoleão',
                       '05.07.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       117,
                       'pre 1',
                       'Ruan De Souza Paquiel',
                       '17.08.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       118,
                       'pre 1',
                       'Taylon Aguiar Freire',
                       '22.04.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       119,
                       'pre 2',
                       'Alice Victória Petrato De Aquino',
                       '24.08.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       120,
                       'pre 2',
                       'Allanna Sousa da Silva',
                       '15.08.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       121,
                       'pre 2',
                       'Ana Vitória Teixeira De Sousa',
                       '08.08.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       122,
                       'pre 2',
                       'Anthony Alves Da Silva',
                       '01.02.19',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       123,
                       'pre 2',
                       'Antônio Gabriel Ferreira De Souza Cardoso',
                       '13.06.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       124,
                       'pre 2',
                       'Arthur Abreu Da Silva',
                       '21.10.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       125,
                       'pre 2',
                       'Aylla Duarte Da Costa',
                       '08.09.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       126,
                       'pre 2',
                       'Bruna Lunna Bibiano Nogueira',
                       '21.06.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       127,
                       'pre 2',
                       'Gabriel Alves Da Rocha',
                       '13.12.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       128,
                       'pre 2',
                       'Helena Da Silva Corrêa',
                       '28.06.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       129,
                       'pre 2',
                       'Juan Guilherme Fernandes Da Silva',
                       '13.08.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       130,
                       'pre 2',
                       'Lavínia Da Silva Lima',
                       '13.06.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       131,
                       'pre 2',
                       'Lorenzo Carvalho Sobreira Dos Santos',
                       '04.06.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       132,
                       'pre 2',
                       'Lorenzo Feliciano Bezerra',
                       '20.06.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       133,
                       'pre 2',
                       'Manuella Alves Pereira',
                       '06.01.19',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       134,
                       'pre 2',
                       'Manuella Santiago Gomes Dos Santos',
                       '06.07.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       135,
                       'pre 2',
                       'Maria Lavínia Mariano Medina',
                       '25.07.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       136,
                       'pre 2',
                       'Murillo Santos Ferreira De Jesus',
                       '28.08.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       137,
                       'pre 2',
                       'Richard Martins Rodrigues',
                       '07.06.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       138,
                       'pre 2',
                       'Taylor Gabriel Dos Santos Ferreira',
                       '14.07.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       139,
                       'pre 2',
                       'Théo Carvalho Galvão',
                       '26.06.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       140,
                       'pre 2',
                       'Vicente Gaby Valadares',
                       '15.08.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       141,
                       '1° ano',
                       'Bento De Oliveira De Sousa',
                       '28.10.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       142,
                       '1° ano',
                       'Bryan Daniel Marques Elias',
                       '05.08.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       143,
                       '1° ano',
                       'Eduardo Bernardo Silva',
                       '05.01.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       144,
                       '1° ano',
                       'Eloá Alves De Oliveira',
                       '15.08.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       145,
                       '1° ano',
                       'Geovanna Alves Da Motta',
                       '25.07.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       146,
                       '1° ano',
                       'Henrique De Souza Belo',
                       '29.11.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       147,
                       '1° ano',
                       'Isaac Almeida De Lira',
                       '24.01.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       148,
                       '1° ano',
                       'João Breno Nicácio Araújo Do Nascimento',
                       '14.01.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       149,
                       '1° ano',
                       'João Miguel Alves Moraes',
                       '09.08.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       150,
                       '1° ano',
                       'João Vitor De Alencar Silva',
                       '27.10.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       151,
                       '1° ano',
                       'Julia Alves Lima',
                       '03.01.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       152,
                       '1° ano',
                       'Kauan Carlos Dos Santos Abreu Neves',
                       '17.07.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       153,
                       '1° ano',
                       'Laura Barreto Santos',
                       '14.12.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       154,
                       '1° ano',
                       'Levi Henrique Aguiar Rebouças',
                       '21.07.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       155,
                       '1° ano',
                       'Luiza Alves Gabriel',
                       '03.11.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       156,
                       '1° ano',
                       'Luna Nicácio Araújo De Lima',
                       '27.07.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       157,
                       '1° ano',
                       'Maria Allyce Da Silva Faustino',
                       '10.09.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       158,
                       '1° ano',
                       'Maria Flor Souza Feitosa',
                       '26.07.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       159,
                       '1° ano',
                       'Rayka De Carvalho Pinto',
                       '03.08.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       160,
                       '1° ano',
                       'Shelly Maria De Oliveira Vilela',
                       '21.06.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       161,
                       '1° ano',
                       'Sophia Marques Montovani',
                       '03.01.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       162,
                       '1° ano',
                       'Thales Rodrigues De Souza',
                       '17.03.18',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       163,
                       '1° ano',
                       'Thayan Alves Araujo',
                       '12.02.18',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       164,
                       '1° ano',
                       'Théo Melo Vieira',
                       '28.07.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       165,
                       '1° ano',
                       'Théo Vitor Gomes De Souza',
                       '20.06.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       166,
                       '2° ano',
                       'Arielly Leandro Gaby',
                       '25.06.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       167,
                       '2° ano',
                       'Arthur Henrique Batalha Dos Santos Pedra',
                       '13.06.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       168,
                       '2° ano',
                       'Breno Araújo Silva',
                       '06.09.26',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       169,
                       '2° ano',
                       'Breno Luccas Tavares Pereira',
                       '29.12.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       170,
                       '2° ano',
                       'Davi Felipe De Oliveira Santana',
                       '01.08.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       171,
                       '2° ano',
                       'Davi Gomes Felix Gaby',
                       '07.06.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       172,
                       '2° ano',
                       'Emanuelle Alves Guilherme',
                       '21.08.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       173,
                       '2° ano',
                       'Henry Bittencourt Rodrigues',
                       '14.10.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       174,
                       '2° ano',
                       'Isabelly Soares Costa',
                       '04.10.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       175,
                       '2° ano',
                       'Isys Victória Gomes Alves',
                       '08.01.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       176,
                       '2° ano',
                       'João Lucas Pinheiro Félix',
                       '18.12.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       177,
                       '2° ano',
                       'Kesia Vitória Ferreira',
                       '05.03.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       178,
                       '2° ano',
                       'Luiz Felipe De Alencar Dos Santos',
                       '28.04.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       179,
                       '2° ano',
                       'Micael Marques De Abreu',
                       '05.07.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       180,
                       '2° ano',
                       'Miguel Rodrigues Da Silva',
                       '18.01.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       181,
                       '2° ano',
                       'Nycolle Bastos Paiva',
                       '03.07.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       182,
                       '2° ano',
                       'Ohana De Araújo Magalhães',
                       '08.04.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       183,
                       '2° ano',
                       'Paula Rosário Da Silva',
                       '03.06.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       184,
                       '2° ano',
                       'Pietro Da Silva Cabral',
                       '27.01.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       185,
                       '2° ano',
                       'Rebecca Tomaz Campos Henriques',
                       '17.09.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       186,
                       '2° ano',
                       'Rickson Silva Soares',
                       '02.04.17',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       187,
                       '2° ano',
                       'Ryanna Barbosa Santiago',
                       '26.02.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       188,
                       '2° ano',
                       'Safira Francisca Da Silva',
                       '21.04.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       189,
                       '2° ano',
                       'Surya Da Silva',
                       '08.04.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       190,
                       '2° ano',
                       'Vitória Ferreira Lima',
                       '28.01.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       191,
                       '2° ano',
                       'Yvi Ferreira Lima',
                       '28.01.17',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       192,
                       '3° ano',
                       'Ana Gabriella Lima De Sousa',
                       '06.07.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       193,
                       '3° ano',
                       'Benny Gabriel Rocha De Azevedo',
                       '30.06.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       194,
                       '3° ano',
                       'Bento Loiola Ferreira Chaves',
                       '11.09.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       195,
                       '3° ano',
                       'Bryan Luccas Tavares Pereira',
                       '13.12.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       196,
                       '3° ano',
                       'Cecília Modesto Hoffmann Gerbassi',
                       '10.05.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       197,
                       '3° ano',
                       'Clara Freire Moreira Gomes',
                       '10.01.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       198,
                       '3° ano',
                       'Daniel Ferreira Rufino',
                       '27.02.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       199,
                       '3° ano',
                       'Danilo Da Silva Sousa',
                       '26.12.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       200,
                       '3° ano',
                       'Danilo Lopes Rodrigues',
                       '10.02.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       201,
                       '3° ano',
                       'Davi Leonardo Bastos Vivian Da Cunha',
                       '02.08.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       202,
                       '3° ano',
                       'Gabriella Freire De Mesquita',
                       '27.06.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       203,
                       '3° ano',
                       'Isabelly Alves Dos Santos',
                       '05.12.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       204,
                       '3° ano',
                       'Júlia Da Silva Araújo',
                       '15.02.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       205,
                       '3° ano',
                       'Kayke Gabriel Lima Santos',
                       '17.04.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       206,
                       '3° ano',
                       'Layza Bianca Da Silva Barbosa',
                       '23.02.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       207,
                       '3° ano',
                       'Luane Faustino Guedes Dos Santos',
                       '26.06.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       208,
                       '3° ano',
                       'Luiz Miguel Alves Guilherme',
                       '06.04.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       209,
                       '3° ano',
                       'Maryelle Regina De Oliveira Vilela',
                       '08.08.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       210,
                       '3° ano',
                       'Nicolas De Sousa Conceição',
                       '24.03.16',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       211,
                       '3° ano',
                       'Pedro Henrique Da Silva Vicente',
                       '26.09.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       212,
                       '3° ano',
                       'Pietro Do Patrocínio Machado',
                       '28.06.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       213,
                       '3° ano',
                       'Renan Francisco Da Silva',
                       '13.05.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       214,
                       '3° ano',
                       'Sophia Farias Machado',
                       '03.11.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       215,
                       '3° ano',
                       'Sury Gomes Vieira',
                       '02.09.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       216,
                       '3° ano',
                       'Yanna Estácio Mendonça',
                       '24.01.16',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       217,
                       '4º ano',
                       'Alice De Carvalho Teodoro',
                       '04.05.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       218,
                       '4º ano',
                       'Anna Luiza De Oliveira Souza',
                       '03.12.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       219,
                       '4º ano',
                       'Bernardo Belo Cordeiro',
                       '10.09.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       220,
                       '4º ano',
                       'Eloáh Campos Fernandes',
                       '17.08.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       221,
                       '4º ano',
                       'Enzo Batista Faria',
                       '15.11.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       222,
                       '4º ano',
                       'Enzo Miguel Alves Fortunato',
                       '12.08.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       223,
                       '4º ano',
                       'Esther Da Silva Braga',
                       '15.03.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       224,
                       '4º ano',
                       'Isabella Santiago Milagres Da Silva',
                       '27.02.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       225,
                       '4º ano',
                       'Isabella Vitória De Lima Farias',
                       '09.01.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       226,
                       '4º ano',
                       'João Davi De Moraes Lourenço Da Silva',
                       '11.01.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       227,
                       '4º ano',
                       'Kauã De Araújo Gomes',
                       '07.06.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       228,
                       '4º ano',
                       'Kauã Valério Oliveira Araújo',
                       '05.02.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       229,
                       '4º ano',
                       'Lara Mororó Lopes Da Silva',
                       '11.08.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       230,
                       '4º ano',
                       'Levi Alves Gabriel',
                       '05.05.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       231,
                       '4º ano',
                       'Lorenzo Costa Tavares Araújo dos Santos',
                       '20.01.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       232,
                       '4º ano',
                       'Ludmilla Ribeiro Duarte',
                       '05.07.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       233,
                       '4º ano',
                       'Maria Júlia Lima Bezerra',
                       '06.05.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       234,
                       '4º ano',
                       'Petterson Martins Custódio',
                       '25.01.15',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       235,
                       '4º ano',
                       'Rebecca Moura Timóteo',
                       '31.03.15',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       236,
                       '4º ano',
                       'Ricciane Vitória Santos Ferreira',
                       '06.12.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       237,
                       '4º ano',
                       'Richard Davi Silva Damasceno',
                       '05.07.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       238,
                       '4º ano',
                       'Stela Mororó Lopes Da Silva',
                       '11.08.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       239,
                       '4º ano',
                       'Thiago Brasiliano De Andrade',
                       '23.05.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       240,
                       '4º ano',
                       'Valentina Albuquerque De Matos',
                       '17.10.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       241,
                       '4º ano',
                       'Valentine Louise Alves Reis',
                       '27.09.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       242,
                       '5º ano',
                       'Adriano Tomaz Rodrigues do Nascimento Silva',
                       '10.01.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       243,
                       '5º ano',
                       'Alice Martins Ferreira',
                       '05.02.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       244,
                       '5º ano',
                       'Ana Alyce Marinho Morais',
                       '03.02.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       245,
                       '5º ano',
                       'Ana Mel Gomes Dos Santos',
                       '09.01.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       246,
                       '5º ano',
                       'Anthony Martins De Oliveira',
                       '09.05.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       247,
                       '5º ano',
                       'Arthur Bezerra Coutinho',
                       '28.05.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       248,
                       '5º ano',
                       'Arthur Norberto Gomes Pavuna',
                       '20.01.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       249,
                       '5º ano',
                       'Benjamin Da Silva Soares',
                       '25.03.14',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       250,
                       '5º ano',
                       'Bruna Vitória Alves Da Silva',
                       '25.10.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       251,
                       '5º ano',
                       'Emanuelle Ferreira De Almeida Florêncio',
                       '07.09.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       252,
                       '5º ano',
                       'Enzo Soares Da Costa',
                       '23.11.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       253,
                       '5º ano',
                       'Erick Mattos Alves',
                       '15.06.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       254,
                       '5º ano',
                       'Isabella Saldanha Viana',
                       '22.04.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       255,
                       '5º ano',
                       'Kaique Junior Gonçalves',
                       '11.10.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       256,
                       '5º ano',
                       'Kamael Da Silva Santos',
                       '10.12.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       257,
                       '5º ano',
                       'Lavínia Antunes Esquivel',
                       '04.12.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       258,
                       '5º ano',
                       'Lorena Victoria De Alencar Silva',
                       '16.11.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       259,
                       '5º ano',
                       'Luiz Nathan Dos Santos',
                       '19.10.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       260,
                       '5º ano',
                       'Maria Alice Alves Guilherme',
                       '30.12.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       261,
                       '5º ano',
                       'Miguel Lucas Franklin Do Couto',
                       '06.03.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       262,
                       '5º ano',
                       'Pérola Da Silva De Souza',
                       '22.07.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       263,
                       '5º ano',
                       'Rebeca Cristina Maciel Santana',
                       '26.01.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       264,
                       '5º ano',
                       'Tárcia Valentina Amaro Da Silva',
                       '17.04.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       265,
                       '5º ano',
                       'Victor Hugo Silva Roberto',
                       '03.07.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       266,
                       '5º ano',
                       'Vitória Felipe Santiago Soares',
                       '29.01.14',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       267,
                       '5º ano',
                       'William Gomes De Sousa',
                       '12.04.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       268,
                       '6º ano',
                       'Alice Souza Do Nascimento',
                       '25.05.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       269,
                       '6º ano',
                       'Allice Trajano Germano De Souza',
                       '03.01.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       270,
                       '6º ano',
                       'Ana Clara Firmino Da Silva Teixeira',
                       '26.12.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       271,
                       '6º ano',
                       'André Mateus Hins Caetano Rocha',
                       '31.12.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       272,
                       '6º ano',
                       'Clariane Vitória Pereira Rodrigues',
                       '18.12.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       273,
                       '6º ano',
                       'Daniel Montilho Rodrigues',
                       '19.12.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       274,
                       '6º ano',
                       'Davi Rodrigues Ripardo',
                       '16.01.13',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       275,
                       '6º ano',
                       'Gabriella Silva Dos Santos',
                       '22.02.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       276,
                       '6º ano',
                       'Inaldo Gabriel Dantas Barcellos',
                       '27.08.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       277,
                       '6º ano',
                       'João Luccas Silva Marques',
                       '29.10.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       278,
                       '6º ano',
                       'Klenbison Eduardo Souza de Santana Júnior',
                       '11.07.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       279,
                       '6º ano',
                       'Lívia Moreira Lima',
                       '31.12.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       280,
                       '6º ano',
                       'Louise Neves Dos Santos',
                       '11.12.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       281,
                       '6º ano',
                       'Luiz Fernando Sobreiro Teixeira',
                       '25.09.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       282,
                       '6º ano',
                       'Manuela Bento Ferreira',
                       '01.10.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       283,
                       '6º ano',
                       'Manuela Vitória Santos Hilário',
                       '13.03.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       284,
                       '6º ano',
                       'Manuella Alves Da Silva Santos',
                       '03.04.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       285,
                       '6º ano',
                       'Maria Luiza Gomes Barroso De Oliveira Ferreira',
                       '13.09.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       286,
                       '6º ano',
                       'Maria Sophia Da Silva Soares',
                       '25.02.13',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       287,
                       '6º ano',
                       'Mariana Moreira Soares',
                       '05.08.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       288,
                       '6º ano',
                       'Rafael Ferreira Nascimento de Oliveira',
                       '13.11.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       289,
                       '6º ano',
                       'Rayanne Ferreira Raymundo Francisco',
                       '19.09.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       290,
                       '6º ano',
                       'Renée Gabriel De Souza Fonseca',
                       '12.05.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       291,
                       '6º ano',
                       'Thauan Bernardo Da Silva Rodrigues',
                       '24.05.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       292,
                       '6º ano',
                       'Yuri De Oliveira Machado',
                       '15.06.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       293,
                       '7º ano',
                       'Ana Gabriela Gomes Da Silva',
                       '21.10.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       294,
                       '7º ano',
                       'Ana Júlia Guimarães Rodrigues Viana',
                       '19.01.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       295,
                       '7º ano',
                       'Arthur De Alencar Lopes',
                       '08.10.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       296,
                       '7º ano',
                       'Arthur Siqueira Dos Santos',
                       '26.07.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       297,
                       '7º ano',
                       'Dayhara De Souza Rezende',
                       '07.02.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       298,
                       '7º ano',
                       'Diogo Antônio Ribeiro Caetano De Sousa',
                       '04.05.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       299,
                       '7º ano',
                       'Enzo Miguel Nogueira Rodrigues',
                       '02.06.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       300,
                       '7º ano',
                       'Fernando Braga Pereira Dominguez',
                       '21.05.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       301,
                       '7º ano',
                       'Julia Victoria Dos Santos Moreira Gomes',
                       '05.07.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       302,
                       '7º ano',
                       'Laura Fonseca De Souza',
                       '06.09.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       303,
                       '7º ano',
                       'Lorenzo Bernardo Silva',
                       '03.02.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       304,
                       '7º ano',
                       'Lucas Martins Fernandes De Queiroz',
                       '06.02.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       305,
                       '7º ano',
                       'Luis Henrique Dos Santos Mota',
                       '16.01.12',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       306,
                       '7º ano',
                       'Luiz Guilherme Da Silva Ucondua',
                       '21.12.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       307,
                       '7º ano',
                       'Maili Bezerra De Moraes',
                       '06.02.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       308,
                       '7º ano',
                       'Maria Clara Da Silva Marques',
                       '24.05.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       309,
                       '7º ano',
                       'Maria Eduarda Da Hora Oliveira',
                       '19.12.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       310,
                       '7º ano',
                       'Marrie Bezerra De Moraes',
                       '06.02.12',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       311,
                       '7º ano',
                       'Miguel Paulino Da Silva',
                       '05.09.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       312,
                       '7º ano',
                       'Pablo Da Silva Paulino Do Nascimento',
                       '14.06.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       313,
                       '7º ano',
                       'Pietro Lima De Matos',
                       '16.10.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       314,
                       '7º ano',
                       'Rhyan Do Patrocínio Machado',
                       '28.12.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       315,
                       '7º ano',
                       'Samuel Heitor De Sousa Barros',
                       '27.12.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       316,
                       '7º ano',
                       'Sofia Dos Santos Lopes',
                       '08.09.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       317,
                       '7º ano',
                       'Sofia Ribeiro De Brito',
                       '20.12.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       318,
                       '7º ano',
                       'Walace Pereira Rocha',
                       '03.05.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       319,
                       '8º ano',
                       'Ana Lourdes Guimarães Vieira Freire',
                       '28.02.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       320,
                       '8º ano',
                       'Anna Beatriz Corrêa Nogueira',
                       '09.03.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       321,
                       '8º ano',
                       'Arthur Bastos Vivian Da Cunha',
                       '22.12.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       322,
                       '8º ano',
                       'Arthur Batista Faria',
                       '22.11.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       323,
                       '8º ano',
                       'Beatriz Soares Gonçalves Benjamin',
                       '27.06.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       324,
                       '8º ano',
                       'Camilly Dos Santos Brito',
                       '18.02.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       325,
                       '8º ano',
                       'Daphne Roberta Da Silva Gomes',
                       '08.02.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       326,
                       '8º ano',
                       'Daphyne Costa Tavares De Araújo',
                       '29.06.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       327,
                       '8º ano',
                       'Iasmin De Oliveira Machado',
                       '27.06.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       328,
                       '8º ano',
                       'Lara De Oliveira Dos Santos',
                       '03.02.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       329,
                       '8º ano',
                       'Lara Ferreira Lima',
                       '10.04.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       330,
                       '8º ano',
                       'Levi Santiago Xavier',
                       '05.01.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       331,
                       '8º ano',
                       'Luiz Adriano Farias Machado',
                       '28.04.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       332,
                       '8º ano',
                       'Manuella Rodrigues Martins',
                       '13.09.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       333,
                       '8º ano',
                       'Marcelo Rodrigues Felix',
                       '20.03.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       334,
                       '8º ano',
                       'Maria Vitória De Oliveira Machado',
                       '18.05.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       335,
                       '8º ano',
                       'Maryna Pessoa De Jesus Barreira',
                       '03.03.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       336,
                       '8º ano',
                       'Nathan Souza Da Silva',
                       '13.04.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       337,
                       '8º ano',
                       'Paulo Cesar André Da Silva',
                       '20.01.11',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       338,
                       '8º ano',
                       'Rafaella De Souza Paquiel',
                       '09.01.11',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       339,
                       '8º ano',
                       'Rayssa Cardoso Dos Santos',
                       '20.08.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       340,
                       '8º ano',
                       'Sthefany Costa Tavares Araújo Dos Santos',
                       '20.09.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       341,
                       '8º ano',
                       'Thiffany Eloá Silva Dos Santos',
                       '18.11.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       342,
                       '8º ano',
                       'Wanderson Gabriel Bezerra Costa',
                       '11.07.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       343,
                       '9º ano',
                       'Ashiley Vitória Barbosa Mendes',
                       '14.05.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       344,
                       '9º ano',
                       'Beatriz Araújo Rossi',
                       '15.06.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       345,
                       '9º ano',
                       'Carolina Vitória Ferreira Martins',
                       '03.07.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       346,
                       '9º ano',
                       'Clarice Almeida Maltarollo',
                       '20.02.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       347,
                       '9º ano',
                       'Enzo Miguel Dos Santos Miranda',
                       '02.06.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       348,
                       '9º ano',
                       'Felipe De Sousa Costa',
                       '05.09.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       349,
                       '9º ano',
                       'Giovanna Gonçalves Gonzalez',
                       '12.02.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       350,
                       '9º ano',
                       'Ícaro Lucas Oliveira Machado',
                       '28.10.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       351,
                       '9º ano',
                       'João Pedro Fernandes De Aquino',
                       '21.03.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       352,
                       '9º ano',
                       'Maria Clara Da Silva Vieira',
                       '18.05.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       353,
                       '9º ano',
                       'Maria Eduarda Rodrigues De Oliveira',
                       '22.06.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       354,
                       '9º ano',
                       'Maria Luiza De Oliveira Da Silva',
                       '10.11.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       355,
                       '9º ano',
                       'Maria Vitória Lanes De Gusmão',
                       '19.04.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       356,
                       '9º ano',
                       'Matheus Hilário Dos Santos',
                       '30.08.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       357,
                       '9º ano',
                       'Matheus Norberto Gomes Silva',
                       '06.05.10',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       358,
                       '9º ano',
                       'Nauan Matheus Barnabé Dos Anjos',
                       '07.09.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       359,
                       '9º ano',
                       'Nicolle Cavalcante Da Silva',
                       '08.01.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       360,
                       '9º ano',
                       'Pietro Da Silva Matos',
                       '17.12.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       361,
                       '9º ano',
                       'Raquel De Farias Cândido',
                       '27.04.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       362,
                       '9º ano',
                       'Rauanne Vitória Firmino Dos Santos',
                       '14.06.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       363,
                       '9º ano',
                       'Rian Augusto Mororó Bezerra',
                       '07.04.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       364,
                       '9º ano',
                       'Roberto Valério Da Silva Júnior',
                       '31.08.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       365,
                       '9º ano',
                       'Yzabelle Vitoria D’alvaro Camaragibe',
                       '05.01.10',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       366,
                       '1º ano',
                       'Alan Silvio Barnabé Dos Santos',
                       '30.05.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       367,
                       '1º ano',
                       'Danyara Pinheiro De Paiva',
                       '06.04.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       368,
                       '1º ano',
                       'Emilly Da Silva Braga',
                       '08.02.09',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       369,
                       '1º ano',
                       'Evellyn Pereira De Paiva',
                       '23.06.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       370,
                       '1º ano',
                       'Isaac Pereira Da Silva',
                       '03.04.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       371,
                       '1º ano',
                       'Isaac Pinheiro Chagas De Melo',
                       '30.03.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       372,
                       '1º ano',
                       'João Lucas Ferreira Telles',
                       '18.04.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       373,
                       '1º ano',
                       'Júlia Fernandes Silva De Oliveira',
                       '16.08.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       374,
                       '1º ano',
                       'Júlia Freitas Pereira Da Silva',
                       '29.10.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       375,
                       '1º ano',
                       'Luiza Gonçalves Da Silva',
                       '08.06.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       376,
                       '1º ano',
                       'Manuella Firmino De Almeida',
                       '13.12.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       377,
                       '1º ano',
                       'Maria Clara Pereira Clementino',
                       '06.09.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       378,
                       '1º ano',
                       'Maria Eduarda Soares Da Silva',
                       '18.02.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       379,
                       '1º ano',
                       'Mariana Eduarda Duarte Faustino',
                       '05.09.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       380,
                       '1º ano',
                       'Matheus Ferreira Soares Da Silva',
                       '23.06.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       381,
                       '1º ano',
                       'Miguel Artur Bezerra Santos',
                       '06.03.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       382,
                       '1º ano',
                       'Myrian Pessoa De Jesus Barreira',
                       '07.04.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       383,
                       '3º ano',
                       'Remy Iury Alves Ferreira Lopes',
                       '22.08.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       384,
                       '1º ano',
                       'Riquelme Alves Satiro',
                       '05.01.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       385,
                       '1º ano',
                       'Sarah Dominike Miranda Pereira',
                       '09.06.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       386,
                       '1º ano',
                       'Thiago Bezerra Matos',
                       '24.05.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       387,
                       '1º ano',
                       'Yuri Bernardo Alves Loiola',
                       '29.01.09',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       388,
                       '2º ano',
                       'Beatriz Vitorino Nunes De Souza',
                       '11.10.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       389,
                       '2º ano',
                       'Bruna Vitória Mendes Hilário Terra',
                       '20.04.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       390,
                       '2º ano',
                       'Emily Vitória Santos Cássio',
                       '18.12.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       391,
                       '2º ano',
                       'Eryc Freire Tavares',
                       '12.01.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       392,
                       '2º ano',
                       'Lucas Antônio Santana Duarte da Silva',
                       '03.09.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       393,
                       '2º ano',
                       'Luiz Felipe Araújo De Oliveira',
                       '09.10.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       394,
                       '2º ano',
                       'Luiz Miguel Ferreira Soares Paula',
                       '26.05.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       395,
                       '2º ano',
                       'Marcos Vinícius Costa Abreu',
                       '11.04.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       396,
                       '2º ano',
                       'Pablo Amaral Da Cruz',
                       '26.12.07',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       397,
                       '2º ano',
                       'Paulo Gabriel Freire De Mesquita',
                       '20.12.05',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       398,
                       '2º ano',
                       'Pietra Araújo Kottitz',
                       '28.04.08',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       399,
                       '2º ano',
                       'Renan Santiago Araújo',
                       '27.02.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       400,
                       '2º ano',
                       'Rúbia Viana Da Silva',
                       '03.12.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       401,
                       '2º ano',
                       'Ryan Santiago Araújo',
                       '27.02.08',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       402,
                       '3º ano',
                       'Ana Carla Pinto Medeiros Botelho',
                       '15.08.05',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       403,
                       '3º ano',
                       'Anna Carolina Brasiliano De Oliveira',
                       '10.11.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       404,
                       '3º ano',
                       'Aysha Gleika Oliveira Barbosa',
                       '25.04.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       405,
                       '3º ano',
                       'Emilly Cristina Maria Dos Santos Miranda',
                       '16.08.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       406,
                       '3º ano',
                       'Julia Galdino Da Silva Oliveira',
                       '12.04.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       407,
                       '3º ano',
                       'Marcela Cristina dos Santos e Souza',
                       '24.06.05',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       408,
                       '3º ano',
                       'Marcos Paulo Alves Pinheiro',
                       '14.12.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       409,
                       '3º ano',
                       'Maria Alice Lemos Hidd',
                       '18.08.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       410,
                       '3º ano',
                       'Maria Eduarda Firmino De Freitas',
                       '04.02.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       411,
                       '3º ano',
                       'Maria Eduarda Lima Bezerra',
                       '28.08.05',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       412,
                       '3º ano',
                       'Maria Vitória Ferreira Carvalho',
                       '03.04.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       413,
                       '3º ano',
                       'Nycolle do Nascimento Viana Leandro',
                       '04.02.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       414,
                       '3º ano',
                       'Samuel Lucas Simão Alves',
                       '06.02.06',
                       'Masculino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       415,
                       '3º ano',
                       'Taynara Letícia Barros Tavares',
                       '02.10.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       416,
                       '3º ano',
                       'Victória Augusta De Almeida Moreira',
                       '25.02.07',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       417,
                       '3º ano',
                       'Victória Lorrayne Da Silva Soares',
                       '17.07.06',
                       'Feminino',
                       2024
                   );

INSERT INTO Alunos (
                       matricula,
                       serie,
                       nome,
                       dataNascimento,
                       genero,
                       anoEntrada
                   )
                   VALUES (
                       418,
                       '3º ano',
                       'Yasmin Martiliano Alves',
                       '27.10.06',
                       'Feminino',
                       2024
                   );


-- Table: atividade
CREATE TABLE IF NOT EXISTS atividade (
    codigo         INTEGER PRIMARY KEY AUTOINCREMENT,
    nome           TEXT,
    vagasAtividade INTEGER,
    cargaHoraria   REAL,
    matricula      INTEGER REFERENCES Alunos (matricula) 
);

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          1,
                          'basquete3x3',
                          75,
                          24.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          2,
                          'escolaDeJudô',
                          200,
                          72.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          3,
                          'tênis',
                          10,
                          8.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          4,
                          'escolaDeTeatro',
                          170,
                          64.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          5,
                          'escolaDeDança',
                          302,
                          132.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          6,
                          'escolaDeMúsica',
                          348,
                          88.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          7,
                          'orquestra',
                          61,
                          212.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          8,
                          'capoeira',
                          131,
                          48.0,
                          NULL
                      );

INSERT INTO atividade (
                          codigo,
                          nome,
                          vagasAtividade,
                          cargaHoraria,
                          matricula
                      )
                      VALUES (
                          9,
                          'flamengo',
                          50,
                          8.0,
                          NULL
                      );


-- Table: AtividadeComplementar
CREATE TABLE IF NOT EXISTS AtividadeComplementar (
    descricao TEXT    PRIMARY KEY,
    tempoHora REAL,
    nota      INTEGER,
    instrutor TEXT
);

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Evangelização',
                                      19.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Edumais',
                                      12.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'educaçãoMusical',
                                      10.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Judô',
                                      14.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Capoeira',
                                      12.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Tenis',
                                      2.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'coralInfantil',
                                      2.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'hipHop',
                                      10.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Robótica',
                                      4.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Recode',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'dançaCriativa',
                                      8.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Teatro',
                                      12.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Ballet',
                                      8.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Basquete',
                                      6.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Zumba',
                                      3.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Yoga',
                                      4.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Jazz',
                                      4.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Violão',
                                      2.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'equipeJudô',
                                      4.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Horta',
                                      1.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Percussão',
                                      2.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Violino',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Sapateado',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'flautaDoce',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'teatroExtensão',
                                      4.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'clubeDeCiências',
                                      1.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Literatura',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'coralJovem',
                                      2.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Mangá',
                                      NULL,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'flautaTransversa',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Camerata',
                                      0.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Viola',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Violoncelo',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Trompete',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Clarineta',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Trompa',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Trombone',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Sax',
                                      5.0,
                                      NULL,
                                      NULL
                                  );

INSERT INTO AtividadeComplementar (
                                      descricao,
                                      tempoHora,
                                      nota,
                                      instrutor
                                  )
                                  VALUES (
                                      'Contrabaixo',
                                      5.0,
                                      NULL,
                                      NULL
                                  );


-- Table: certificado
CREATE TABLE IF NOT EXISTS certificado (
    resultado NUMERIC,
    notas     NUMERIC,
    matricula INTEGER REFERENCES Alunos (matricula),
    idTurma   INTEGER
);


-- Table: TrilhasTecnologicas
CREATE TABLE IF NOT EXISTS TrilhasTecnologicas (
    descricao TEXT    PRIMARY KEY,
    inicio    NUMERIC,
    fim       NUMERIC,
    nota      INTEGER
);

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'marketingDigital',
                                    55,
                                    32,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'ferramentasDigitais',
                                    47,
                                    41,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'desenvolvimentoGames1',
                                    47,
                                    37,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'programação',
                                    46,
                                    33,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'desenvolvimentoGames2',
                                    31,
                                    24,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'tecnologiaParaOFuturo',
                                    30,
                                    10,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'desenvolvimentoSistemasWeb1',
                                    28,
                                    8,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'gestãoEmpregabilidade',
                                    24,
                                    10,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'analisedeDadosComFerramentasDeBI',
                                    19,
                                    15,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'reprogramandoSeuFuturo',
                                    17,
                                    8,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'desenvolvimentoSistemasWeb2',
                                    15,
                                    9,
                                    NULL
                                );

INSERT INTO TrilhasTecnologicas (
                                    descricao,
                                    inicio,
                                    fim,
                                    nota
                                )
                                VALUES (
                                    'CriandoInfraNaNuvem',
                                    13,
                                    7,
                                    NULL
                                );


-- Table: Turmas
CREATE TABLE IF NOT EXISTS Turmas (
    serie      TEXT    PRIMARY KEY,
    idTurma    INTEGER,
    segmento   TEXT,
    anoLetivo  INTEGER,
    coc        INTEGER,
    reprovados INTEGER,
    aprovados  INTEGER,
    abandono   INTEGER,
    novos      INTEGER,
    saiu       INTEGER,
    situacao   TEXT,
    vagas      INTEGER,
    matricula  INTEGER REFERENCES Alunos (matricula) 
);

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'bercario 1',
                       1,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       14,
                       0,
                       14,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'bercario 2',
                       2,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       17,
                       0,
                       12,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'bercario 3',
                       3,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       17,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'maternal 1',
                       4,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       23,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'maternal 2',
                       5,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       23,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'pre 1',
                       6,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       24,
                       0,
                       1,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       'pre 2',
                       7,
                       'ed.Infantil',
                       2024,
                       0,
                       0,
                       23,
                       0,
                       1,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '1° ano',
                       8,
                       'fundamentalI',
                       2024,
                       0,
                       0,
                       25,
                       0,
                       5,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '2° ano',
                       9,
                       'fundamentalI',
                       2024,
                       0,
                       0,
                       26,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '3° ano',
                       10,
                       'fundamentalI',
                       2024,
                       0,
                       0,
                       25,
                       0,
                       3,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '4º ano',
                       11,
                       'fundamentalI',
                       2024,
                       0,
                       0,
                       25,
                       0,
                       2,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '5º ano',
                       12,
                       'fundamentalI',
                       2024,
                       0,
                       0,
                       26,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '6º ano',
                       13,
                       'fundamentalII',
                       2024,
                       0,
                       0,
                       25,
                       0,
                       3,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '7º ano',
                       14,
                       'fundamentalII',
                       2024,
                       0,
                       0,
                       26,
                       0,
                       4,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '8º ano',
                       15,
                       'fundamentalII',
                       2024,
                       0,
                       0,
                       24,
                       0,
                       2,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '9º ano',
                       16,
                       'fundamentalII',
                       2024,
                       0,
                       0,
                       23,
                       0,
                       4,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '1º ano',
                       17,
                       'ensinoMedio',
                       2024,
                       0,
                       0,
                       22,
                       1,
                       4,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '2º ano',
                       18,
                       'ensinoMedio',
                       2024,
                       0,
                       0,
                       14,
                       0,
                       0,
                       0,
                       NULL,
                       NULL,
                       NULL
                   );

INSERT INTO Turmas (
                       serie,
                       idTurma,
                       segmento,
                       anoLetivo,
                       coc,
                       reprovados,
                       aprovados,
                       abandono,
                       novos,
                       saiu,
                       situacao,
                       vagas,
                       matricula
                   )
                   VALUES (
                       '3º ano',
                       19,
                       'ensinoMedio',
                       2024,
                       0,
                       0,
                       17,
                       0,
                       2,
                       1,
                       NULL,
                       NULL,
                       NULL
                   );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
