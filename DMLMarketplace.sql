USE db_marketplace;

INSERT INTO tb_usuarios
VALUES ('FariasSJesus','Jesus Farias',  '123468', 'FIS', 'URLFOTOJESUS'),
('Gustavo Boaz', 'BoazGustavo', '864321', 'FIS', 'URLFOTOBOAZ'),
('Clauber Costa', 'CostaClauber', '964321', 'FIS', 'URLFOTOBINHO');

INSERT INTO tb_produtos
VALUES ('Produto', 'Descrição do produto', 29.90 , 'URLIMAGEM', 1, 1);

INSERT INTO tb_categoria
VALUES ('Bens não consumíveis');

SELECT * FROM tb_usuarios
WHERE Id LIKE 1
