CREATE DATABASE gomei
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;
       
CREATE SEQUENCE public.usuariosequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.usuariosequence
  OWNER TO postgres;
  
CREATE TABLE public.usuario (
  id_usuario bigint NOT NULL DEFAULT nextval('usuariosequence'::regclass),
  nomeusuario character varying(200) NOT NULL,
  emailusuario character varying(200) NOT NULL,
  senhausuario character varying(32) NOT NULL,
  CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario)
)
WITH (OIDS=FALSE);
ALTER TABLE public.usuario OWNER TO postgres;


CREATE SEQUENCE public.meisequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.meisequence
  OWNER TO postgres;
  
CREATE TABLE mei (
  id_mei bigint NOT NULL DEFAULT nextval('meisequence'::regclass),
  id_usuario bigint NOT NULL,
  nomecompleto character varying(200) NOT NULL,
  email character varying(200) NOT NULL, 
  razaosocial character varying(200) NOT NULL, 
  cnpj character varying(20) NOT NULL, 
  ocupacaoprincipal character varying(200) NOT NULL, 
  ocupacaosecundaria character varying(200), 
  cpf character varying(15) NOT NULL, 
  tel character varying(20), 
  cel character varying(20) NOT NULL,
  sexo char(1) NOT NULL,
  rg character varying(20), 
  nome_mae character varying(200) NOT NULL,
  nome_pai character varying(200),
  cep character varying(20) NOT NULL,
  logradouro character varying(200),
  numero character varying(10) NOT NULL,
  bairro character varying(100),
  cidade character varying(200),
  uf char(2),
  CONSTRAINT mei_pkey PRIMARY KEY (id_mei)
)
WITH (OIDS=FALSE);

CREATE TABLE funcionario (
  id_funcionario serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  nome character varying(200) NOT NULL,
  cpf character varying(20) NOT NULL,
  email character varying(200) NOT NULL,    
  tel character varying(20), 
  cel character varying(20) NOT NULL,
  sexo char(1) NOT NULL,
  rg character varying(20), 
  nome_mae character varying(200) NOT NULL,
  nome_pai character varying(200),
  cep character varying(20) NOT NULL,
  logradouro character varying(200),
  numero character varying(10) NOT NULL,
  bairro character varying(100),
  cidade character varying(200),
  uf char(2),
  ctps character varying(20) NOT NULL,  
  pis character varying(20) NOT NULL,
  numeroconta character varying(20) NOT NULL,
  tipoconta character varying(50) NOT NULL,
  nomebanco character varying(50) NOT NULL,
  agenciabancaria character varying(20) NOT NULL,
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH (OIDS=FALSE);