USE db_redesocial;

INSERT INTO tb_usuarios
VALUES ('Jesus Farias', 'FariasSJesus', '123468', 'URLFOTOJESUS'),
('Gustavo Boaz', 'BoazGustavo', '864321', 'URLFOTOBOAZ'),
('Clauber Costa', 'CostaClauber', '964321', 'URLFOTOBINHO');

SELECT Nome FROM tb_usuarios
WHERE Nome LIKE '%s';
--------------------------------------------------------------------
INSERT INTO tb_postagens
VALUES ('Postagem', 'Descrição da postagem', 'URLIMGPOST', '2022-08-02 22:10', 1, 1);
-----------------------------------------------------------------------
INSERT INTO tb_inscritos
VALUES (1, 1, '2022-08-02 22:10');
----------------------------------------------------------------------
INSERT INTO tb_grupos
VALUES ('NomeGrupo', 'Descrição do grupo', 'URLIMGGRUPO', 1);

SELECT * FROM tb_grupos
WHERE Id LIKE 1;