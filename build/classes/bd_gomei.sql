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

INSERT INTO usuario (nomeusuario, emailusuario, senhausuario) VALUES ('Patricia', 'patricia@gmail.com', 'p');
SELECT * FROM usuario;



CREATE SEQUENCE public.meisequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE public.meisequence OWNER TO postgres;
  
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
ALTER TABLE mei ADD COLUMN dt TIMESTAMPTZ DEFAULT Now();

INSERT INTO mei (id_usuario, nomecompleto, email, razaosocial, cnpj, ocupacaoprincipal, ocupacaosecundaria, cpf, tel, cel, sexo, rg, nome_mae, nome_pai, cep, logradouro, numero, bairro, cidade, uf)
VALUES (1, 'Patricia Alencar', 'patriciaalencar775@gmail.com', 'PFA', '2938.2930.038/0001', 'Programadora', 'Professora', '982.039.390-00', '280-3829', '9 8389-0392', 'F', '32.938.039-8', 'Patricia mãe', 'Patricia pai', '03393-000', 'Rua Ipiranga', '1039', 'Centro', 'São Paulo', 'SP');



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

INSERT INTO funcionario (id_usuario, nome, cpf, email, tel, cel, sexo, rg, nome_mae, nome_pai, cep, logradouro, numero, bairro, cidade, uf, ctps, pis, numeroconta, tipoconta, nomebanco, agenciabancaria)
VALUES (1, 'Rosa Popovic', '342.232.489-00', 'rosa@gmail.com', '3948-2092', '9 8389-0392', 'F', '32.938.039-8', 'Rosa mãe', 'Rosa pai', '03923-309', 'Rua Oriente', '3,apto.3', 'Centro', 'São Paulo', 'SP', '93029-30', '3923.9382-3990', '88999-88', 'Corrente', 'Banco do Brasil', '930');
SELECT * FROM funcionario;


CREATE TABLE contrato(
  id_contrato serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  id_mei bigint NOT NULL,
  id_funcionario bigint NOT NULL,
  nomefuncionario character varying(200) NOT NULL,
  iniciocontrato timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  fimcontrato timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valorhora decimal(10,2),
  dtpagamento character varying(20) NOT NULL,
  valorpagamento decimal(7,2) NOT NULL,
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH(OIDS=FALSE);
INSERT INTO contrato (id_usuario, id_mei, id_funcionario, nomefuncionario, valorhora, dtpagamento, valorpagamento)
VALUES (1, 1, 1, 'Rosa Popovic', 30.49, '20 do mês', 2500.00);
INSERT INTO contrato (id_usuario, id_mei, id_funcionario, nomefuncionario, iniciocontrato, fimcontrato, valorhora, dtpagamento, valorpagamento)
VALUES (1, 1, 1, 'Rosa Popovic', '2010-04-10', '2021-04-01' , 35.49, '05 do mês', 2800.00);
SELECT * FROM contrato;



CREATE TABLE fornecedor (
  id_fornecedor serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  nome_razaosocial character varying(200) NOT NULL,
  cpf_cnpj character varying(20) NOT NULL,
  inscricaoestadual character varying(20) NOT NULL,
  inscricaomunicipal character varying(32) NOT NULL,
  email character varying(200) NOT NULL,    
  tel character varying(20), 
  cel character varying(20) NOT NULL,
  sexo char(1),
  rg character varying(20), 
  nome_mae character varying(200),
  nome_pai character varying(200),
  cep character varying(20) NOT NULL,
  logradouro character varying(200),
  numero character varying(10) NOT NULL,
  bairro character varying(100),
  cidade character varying(200),
  uf char(2),
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH (OIDS=FALSE);
INSERT INTO fornecedor (id_usuario, nome_razaosocial, cpf_cnpj, inscricaoestadual, inscricaomunicipal, email, tel, cel, sexo, rg, nome_mae, nome_pai, cep, logradouro, numero, bairro, cidade, uf) 
VALUES (1, 'DELL Computadores', '20.178.987/0001-46','836.024.333.763', '01234567890-1', 'dell@dell.com.br', '3498-3848', '9 9403-3029', '','','', '', '04839-9234', 'Av. Paulista', '900', 'Cerqueira César', 'Sâo Paulo', 'SP');
SELECT * FROM fornecedor;


CREATE TABLE compra(
  id_compra serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  id_fornecedor bigint NOT NULL,
  id_mei bigint NOT NULL,
  fornecedor character varying(200) NOT NULL,
  descricaocompra character varying(200) NOT NULL,  
  dtcompra timestamp NOT NULL,
  valorcompra decimal(7,2) NOT NULL,
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH(OIDS=FALSE);
SELECT * FROM compra;
INSERT INTO compra (id_usuario, id_fornecedor, id_mei, fornecedor, descricaocompra, dtcompra, valorcompra) 
VALUES (1, 1, 1, 'DELL Computadores', 'Notebook i7, 500MB RAM, 1TB HD', '2021-01-28', 5599.99 );


CREATE TABLE estoque(
  id_estoque serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  descricaoestoque character varying(200) NOT NULL,  
  preco decimal(7,2) NOT NULL,
  quantidade decimal(7,2) NOT NULL,
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH(OIDS=FALSE);
INSERT INTO estoque (id_usuario, descricaoestoque, preco, quantidade) VALUES (1, 'Sistema Web para MEI', 5000.00, 1.00);
SELECT * FROM estoque;



CREATE TABLE vendaestoque(
  id_vendaestoque serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  id_mei bigint NOT NULL,
  id_cliente bigint NOT NULL,
  id_estoque bigint NOT NULL,
  descricaoestoque character varying(200) NOT NULL,
  valorunitario decimal(7,2) NOT NULL,
  qtde  decimal(7,2) NOT NULL,
  nomecliente character varying(200) NOT NULL,
  formapgto  character varying(50) NOT NULL,
  dtvenda timestamp NOT NULL,
  valortotal decimal(7,2) NOT NULL,
  situacao character varying(12)
)
WITH(OIDS=FALSE);
INSERT INTO vendaestoque(id_usuario, id_mei, id_cliente, id_estoque, descricaoestoque, valorunitario, qtde, nomecliente, formapgto, dtvenda, valortotal, situacao) 
VALUES (1, 1, 1, 1, 'Sistema Web para MEI', 5000.00, 2.00, 'Zenilda Silva', 'cartão de crédito', '2021-04-13', 10000.00, 'REALIZADA');
SELECT * FROM vendaestoque;


CREATE TABLE servico(
  id_servico serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  descricaoservico character varying(200) NOT NULL,  
  precoservico decimal(7,2) NOT NULL,
  quantidadeservico decimal(7,2) NOT NULL,
  dt TIMESTAMPTZ DEFAULT Now()
)
WITH(OIDS=FALSE);
INSERT INTO servico (id_usuario, descricaoservico, precoservico, quantidadeservico) VALUES (1, 'Manutenção no Sistema Web para MEI', 250.00, 1.00);
SELECT * FROM servico;


CREATE TABLE vendaservico(
  id_vendaservico serial PRIMARY KEY,
  id_usuario bigint NOT NULL,
  id_mei bigint NOT NULL,
  id_cliente bigint NOT NULL,
  id_servico bigint NOT NULL,
  descricaoservico character varying(200) NOT NULL,
  valorunitario decimal(7,2) NOT NULL,
  qtde  decimal(7,2) NOT NULL,
  nomecliente character varying(200) NOT NULL,
  formapgto  character varying(50) NOT NULL,
  dtvenda timestamp NOT NULL,
  valortotal decimal(7,2) NOT NULL,
  situacao character varying(12)
)
WITH(OIDS=FALSE);
INSERT INTO vendaservico(id_usuario, id_mei, id_cliente, id_servico, descricaoservico, valorunitario, qtde, nomecliente, formapgto, dtvenda, valortotal, situacao) 
VALUES (1, 1, 1, 1, 'Manutenção no Sistema Web para MEI', 250.00, 2.00, 'Zenilda Silva', 'cartão de crédito', '2021-04-13', 500.00, 'REALIZADA');
SELECT * FROM vendaservico;