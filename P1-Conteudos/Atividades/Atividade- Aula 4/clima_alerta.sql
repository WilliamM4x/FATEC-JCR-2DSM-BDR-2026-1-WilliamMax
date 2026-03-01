-- DROP SCHEMA clima_alerta;

CREATE SCHEMA clima_alerta AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA clima_alerta IS 'standard public schema';
-- clima_alerta.localizacao definition

-- Drop table

-- DROP TABLE clima_alerta.localizacao;

CREATE TABLE clima_alerta.localizacao ( idlocalizacao int4 NOT NULL, latitude float8 NULL, longitude float8 NULL, cidade varchar(100) NULL, estado varchar(5) NULL, CONSTRAINT localizacao_pkey PRIMARY KEY (idlocalizacao));

-- Permissions

ALTER TABLE clima_alerta.localizacao OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.localizacao TO postgres;


-- clima_alerta.nivel definition

-- Drop table

-- DROP TABLE clima_alerta.nivel;

CREATE TABLE clima_alerta.nivel ( idnivel int4 NOT NULL, nivel varchar(50) NULL, CONSTRAINT nivel_pkey PRIMARY KEY (idnivel));

-- Permissions

ALTER TABLE clima_alerta.nivel OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.nivel TO postgres;


-- clima_alerta.statusevento definition

-- Drop table

-- DROP TABLE clima_alerta.statusevento;

CREATE TABLE clima_alerta.statusevento ( idstatus int4 NOT NULL, nomestatus varchar(50) NOT NULL, CONSTRAINT statusevento_pkey PRIMARY KEY (idstatus));

-- Permissions

ALTER TABLE clima_alerta.statusevento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.statusevento TO postgres;


-- clima_alerta.tipoevento definition

-- Drop table

-- DROP TABLE clima_alerta.tipoevento;

CREATE TABLE clima_alerta.tipoevento ( idtipoevento int4 NOT NULL, nome varchar(50) NOT NULL, descricao varchar(200) NULL, CONSTRAINT tipoevento_pkey PRIMARY KEY (idtipoevento));

-- Permissions

ALTER TABLE clima_alerta.tipoevento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.tipoevento TO postgres;


-- clima_alerta.usuario definition

-- Drop table

-- DROP TABLE clima_alerta.usuario;

CREATE TABLE clima_alerta.usuario ( idusuario int4 NOT NULL, nome varchar(100) NOT NULL, email varchar(100) NOT NULL, senhahash varchar(200) NOT NULL, CONSTRAINT usuario_pkey PRIMARY KEY (idusuario));

-- Permissions

ALTER TABLE clima_alerta.usuario OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.usuario TO postgres;


-- clima_alerta.evento definition

-- Drop table

-- DROP TABLE clima_alerta.evento;

CREATE TABLE clima_alerta.evento ( idevento int4 NOT NULL, titulo varchar(100) NULL, descricao varchar(200) NULL, datathora timestamp NULL, status int4 NULL, idtipoevento int4 NULL, idlocalizacao int4 NULL, CONSTRAINT evento_pkey PRIMARY KEY (idevento), CONSTRAINT evento_idlocalizacao_fkey FOREIGN KEY (idlocalizacao) REFERENCES clima_alerta.localizacao(idlocalizacao), CONSTRAINT evento_idtipoevento_fkey FOREIGN KEY (idtipoevento) REFERENCES clima_alerta.tipoevento(idtipoevento), CONSTRAINT evento_status_fkey FOREIGN KEY (status) REFERENCES clima_alerta.statusevento(idstatus));

-- Permissions

ALTER TABLE clima_alerta.evento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.evento TO postgres;


-- clima_alerta.relato definition

-- Drop table

-- DROP TABLE clima_alerta.relato;

CREATE TABLE clima_alerta.relato ( idrelato int4 NOT NULL, texto varchar(100) NULL, datahora timestamp NULL, idevento int4 NULL, idusuario int4 NULL, CONSTRAINT relato_pkey PRIMARY KEY (idrelato), CONSTRAINT relato_idevento_fkey FOREIGN KEY (idevento) REFERENCES clima_alerta.evento(idevento), CONSTRAINT relato_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES clima_alerta.usuario(idusuario));

-- Permissions

ALTER TABLE clima_alerta.relato OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.relato TO postgres;


-- clima_alerta.alerta definition

-- Drop table

-- DROP TABLE clima_alerta.alerta;

CREATE TABLE clima_alerta.alerta ( idalerta int4 NOT NULL, mensagem varchar(100) NULL, datahora timestamp NULL, idevento int4 NULL, idnivel int4 NULL, CONSTRAINT alerta_pkey PRIMARY KEY (idalerta), CONSTRAINT alerta_idevento_fkey FOREIGN KEY (idevento) REFERENCES clima_alerta.evento(idevento), CONSTRAINT alerta_idnivel_fkey FOREIGN KEY (idnivel) REFERENCES clima_alerta.nivel(idnivel));

-- Permissions

ALTER TABLE clima_alerta.alerta OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.alerta TO postgres;

-- DROP SCHEMA clima_alerta;

CREATE SCHEMA clima_alerta AUTHORIZATION pg_database_owner;

COMMENT ON SCHEMA clima_alerta IS 'standard public schema';
-- clima_alerta.localizacao definition

-- Drop table

-- DROP TABLE clima_alerta.localizacao;

CREATE TABLE clima_alerta.localizacao ( idlocalizacao int4 NOT NULL, latitude float8 NULL, longitude float8 NULL, cidade varchar(100) NULL, estado varchar(5) NULL, CONSTRAINT localizacao_pkey PRIMARY KEY (idlocalizacao));

-- Permissions

ALTER TABLE clima_alerta.localizacao OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.localizacao TO postgres;


-- clima_alerta.nivel definition

-- Drop table

-- DROP TABLE clima_alerta.nivel;

CREATE TABLE clima_alerta.nivel ( idnivel int4 NOT NULL, nivel varchar(50) NULL, CONSTRAINT nivel_pkey PRIMARY KEY (idnivel));

-- Permissions

ALTER TABLE clima_alerta.nivel OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.nivel TO postgres;


-- clima_alerta.statusevento definition

-- Drop table

-- DROP TABLE clima_alerta.statusevento;

CREATE TABLE clima_alerta.statusevento ( idstatus int4 NOT NULL, nomestatus varchar(50) NOT NULL, CONSTRAINT statusevento_pkey PRIMARY KEY (idstatus));

-- Permissions

ALTER TABLE clima_alerta.statusevento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.statusevento TO postgres;


-- clima_alerta.tipoevento definition

-- Drop table

-- DROP TABLE clima_alerta.tipoevento;

CREATE TABLE clima_alerta.tipoevento ( idtipoevento int4 NOT NULL, nome varchar(50) NOT NULL, descricao varchar(200) NULL, CONSTRAINT tipoevento_pkey PRIMARY KEY (idtipoevento));

-- Permissions

ALTER TABLE clima_alerta.tipoevento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.tipoevento TO postgres;


-- clima_alerta.usuario definition

-- Drop table

-- DROP TABLE clima_alerta.usuario;

CREATE TABLE clima_alerta.usuario ( idusuario int4 NOT NULL, nome varchar(100) NOT NULL, email varchar(100) NOT NULL, senhahash varchar(200) NOT NULL, CONSTRAINT usuario_pkey PRIMARY KEY (idusuario));

-- Permissions

ALTER TABLE clima_alerta.usuario OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.usuario TO postgres;


-- clima_alerta.evento definition

-- Drop table

-- DROP TABLE clima_alerta.evento;

CREATE TABLE clima_alerta.evento ( idevento int4 NOT NULL, titulo varchar(100) NULL, descricao varchar(200) NULL, datathora timestamp NULL, status int4 NULL, idtipoevento int4 NULL, idlocalizacao int4 NULL, CONSTRAINT evento_pkey PRIMARY KEY (idevento), CONSTRAINT evento_idlocalizacao_fkey FOREIGN KEY (idlocalizacao) REFERENCES clima_alerta.localizacao(idlocalizacao), CONSTRAINT evento_idtipoevento_fkey FOREIGN KEY (idtipoevento) REFERENCES clima_alerta.tipoevento(idtipoevento), CONSTRAINT evento_status_fkey FOREIGN KEY (status) REFERENCES clima_alerta.statusevento(idstatus));

-- Permissions

ALTER TABLE clima_alerta.evento OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.evento TO postgres;


-- clima_alerta.relato definition

-- Drop table

-- DROP TABLE clima_alerta.relato;

CREATE TABLE clima_alerta.relato ( idrelato int4 NOT NULL, texto varchar(100) NULL, datahora timestamp NULL, idevento int4 NULL, idusuario int4 NULL, CONSTRAINT relato_pkey PRIMARY KEY (idrelato), CONSTRAINT relato_idevento_fkey FOREIGN KEY (idevento) REFERENCES clima_alerta.evento(idevento), CONSTRAINT relato_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES clima_alerta.usuario(idusuario));

-- Permissions

ALTER TABLE clima_alerta.relato OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.relato TO postgres;


-- clima_alerta.alerta definition

-- Drop table

-- DROP TABLE clima_alerta.alerta;

CREATE TABLE clima_alerta.alerta ( idalerta int4 NOT NULL, mensagem varchar(100) NULL, datahora timestamp NULL, idevento int4 NULL, idnivel int4 NULL, CONSTRAINT alerta_pkey PRIMARY KEY (idalerta), CONSTRAINT alerta_idevento_fkey FOREIGN KEY (idevento) REFERENCES clima_alerta.evento(idevento), CONSTRAINT alerta_idnivel_fkey FOREIGN KEY (idnivel) REFERENCES clima_alerta.nivel(idnivel));

-- Permissions

ALTER TABLE clima_alerta.alerta OWNER TO postgres;
GRANT ALL ON TABLE clima_alerta.alerta TO postgres;




-- Permissions

GRANT ALL ON SCHEMA clima_alerta TO pg_database_owner;
GRANT USAGE ON SCHEMA clima_alerta TO public;
