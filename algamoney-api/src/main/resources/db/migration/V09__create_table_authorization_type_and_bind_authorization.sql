CREATE TABLE authorization_type (
  id serial PRIMARY KEY,
  description VARCHAR(50) NOT NULL
);

INSERT INTO authorization_type (id, description) VALUES (1, 'Lançamento');
INSERT INTO authorization_type (id, description) VALUES (2, 'Pessoa');
INSERT INTO authorization_type (id, description) VALUES (3, 'Categoria');
INSERT INTO authorization_type (id, description) VALUES (4, 'Usuário');

ALTER TABLE authorization ADD COLUMN authorization_type integer;

UPDATE authorization SET authorization_type = 1 WHERE id in (6, 7, 8);
UPDATE authorization SET authorization_type = 2 WHERE id in (3, 4, 5);
UPDATE authorization SET authorization_type = 3 WHERE id in (1, 2);
UPDATE authorization SET authorization_type = 4 WHERE id in (9, 10, 11);