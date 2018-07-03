CREATE TABLE pokemons(id INT IDENTITY(1,1) PRIMARY KEY, nome VARCHAR(150));
CREATE TABLE categorias(id INT IDENTITY(1,1) PRIMARY KEY,id_pokemon INT,nome VARCHAR(150), FOREIGN KEY(id_pokemon) REFERENCES pokemons(id));
CREATE TABLE fraquezas1(id INT IDENTITY(1,1) PRIMARY KEY,id_pokemonFraqueza1 INT, nome VARCHAR(50),FOREIGN KEY(id_pokemonFraqueza1) REFERENCES pokemons(id));
CREATE TABLE fraquezas2(id INT IDENTITY(1,1) PRIMARY KEY,id_pokemonFraqueza2 INT, nome VARCHAR(50),FOREIGN KEY(id_pokemonFraqueza2) REFERENCES pokemons(id));
INSERT INTO pokemons (nome) VALUES('Eevee');
INSERT INTO pokemons (nome) VALUES('Vaporeon');
INSERT INTO pokemons (nome) VALUES('Jolteon');
INSERT INTO pokemons (nome) VALUES('Flareon');
INSERT INTO pokemons (nome) VALUES('Umbreon');
INSERT INTO pokemons (nome) VALUES('Glaceon');
INSERT INTO pokemons (nome) VALUES('Leafeon');
INSERT INTO pokemons (nome) VALUES('Espeon');
INSERT INTO pokemons (nome) VALUES('Sylveon');
INSERT INTO pokemons (nome) VALUES('Raichu');

INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Eevee'),'Normal');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Vaporeon'),'Water');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Jolteon'),'Eletric');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Flareon'),'Fire');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Umbreon'),'Dark');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Glaceon'),'Ice');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Leafeon'),'Espeon');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Espeon'),'Psychic');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Sylveon'),'Fairy');
INSERT INTO categorias(id_pokemon, nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Raichu'),'Eletric');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Eevee'),'Fighting');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Eevee'),NULL);

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Vaporeon'),'Eletric');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Vaporeon'),'Grass');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Jolteon'),'Ground');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Jolteon'),NULL);

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Flareon'),'Ground');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Flareon'),'Water');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Umbreon'),'Fighting');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Umbreon'),'Fairy');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Glaceon'),'Fire');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Glaceon'),'Fighting');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Leafeon'),'Bug');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Leafeon'),'Fire');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Espeon'),'Bug');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Espeon'),'Dark');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Sylveon'),'Steel');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Sylveon'),'Dark');

INSERT INTO fraquezas1(id_pokemonFraqueza1,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Raichu'),'Groun');
INSERT INTO fraquezas2(id_pokemonFraqueza2,nome) VALUES((SELECT id FROM pokemons WHERE nome = 'Raichu'),NULL);

SELECT * FROM pokemons;
SELECT id_pokemon,nome FROM categorias;
SELECT id_pokemonFraqueza1,nome FROM fraquezas1;
SELECT id_pokemonFraqueza2,nome FROM fraquezas2;