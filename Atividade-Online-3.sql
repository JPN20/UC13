--DML
--adicionando dados

INSERT INTO Usuario VALUES ('fulano@email.com', 123456)
INSERT INTO Classe VALUES ('Bruxa' , 'Descri��o do Bruxa')
INSERT INTO Habilidade VALUES ('Vassoura'), ('Caldeir�o')
INSERT INTO Personagem (Nome, UsuarioId, ClasseId) VALUES ('Fulano', 1, 1)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES (1, 1), (1, 2)


INSERT INTO Usuario VALUES ('beltrano@email.com', 123456)
INSERT INTO Classe VALUES ('Leprechaun' , 'Descri��o do Leprechaun')
INSERT INTO Habilidade VALUES ('Ganhar vida extra')
INSERT INTO Personagem (Nome, UsuarioId, ClasseId) VALUES ('Beltrano', 2, 2)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES (2, 2), (2, 3)


--DQL	
SELECT * FROM Usuario
SELECT * FROM Personagem
SELECT * FROM Classe
SELECT * FROM Habilidade
SELECT * FROM ClasseHabilidade

--desafio (modo 1 com JOIN)
--selecionar e-mail do usu�rio , nome do personagem , classe e sua descri��o por meio da instru��o inner join envolvendo as 3 tabelas.
SELECT u.Email 'Email do usu�rio', p.Nome 'Nome personagem', c.Nome 'Classe', c.Descricao 'Descri��o' 
FROM Usuario u 
INNER JOIN Personagem p
ON u.UsuarioId = p.PersonagemId
INNER JOIN Classe c
ON p.PersonagemId = c.ClasseId

--desafio (modo 2 COM WHERE)
SELECT u.Email 'Email do usu�rio', p.Nome 'Nome personagem', c.Nome 'Classe', c.Descricao 'Descri��o' 
FROM Usuario u, Personagem p, Classe c
WHERE u.UsuarioId = p.PersonagemId AND
      p.PersonagemId = c.ClasseId

