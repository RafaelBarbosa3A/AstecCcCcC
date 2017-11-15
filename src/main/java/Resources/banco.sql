/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Fernando
 * Created: 14/10/2017
 */

CREATE TABLE CLIENTE (
id_cliente INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
datas TIMESTAMP NOT NULL, 
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(14) NOT NULL,
endereco VARCHAR(255),
telefone VARCHAR(30) NOT NULL,
PRIMARY KEY (id_cliente)
);


CREATE TABLE PRODUTO(
id_prod INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
datas TIMESTAMP NOT NULL,
nome VARCHAR(255) NOT NULL,
categoria VARCHAR(100) NOT NULL ,
cor VARCHAR(100) NOT NULL,
tamanho INT NOT NULL ,
quantidade_estoque INT NOT NULL,
descr VARCHAR(255),
preco DOUBLE NOT NULL,
PRIMARY KEY (id_prod)
);

CREATE TABLE FILIAL (
id_filial INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
datas TIMESTAMP NOT NULL, 
PRIMARY KEY (id_filial)
);



CREATE TABLE FUNCIONARIO (
id_funcionario INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
datas TIMESTAMP NOT NULL,
id_filial INT NOT NULL,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(50) NOT NULL,
senha VARCHAR(20),
telefone VARCHAR(30) NOT NULL,
FOREIGN KEY (id_filial) REFERENCES FILIAL(id_filial),
PRIMARY KEY (id_funcionario)
);


CREATE TABLE VENDA (
    id_venda INT NOT NULL 
          GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    datas TIMESTAMP NOT NULL,
    id_cliente INT NOT NULL,
    valorTotal DOUBLE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
    PRIMARY KEY (id_venda)
);


/*ITEM DE PRODUTOS OU CARRINHO*/  
CREATE TABLE ITEMVENDA (
    id_itemVenda INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    id_venda INT NOT NULL,
    id_prod INT NOT NULL,
    qtdVenda INT NOT NULL,
    FOREIGN KEY (id_prod) REFERENCES PRODUTO (id_prod),
    FOREIGN KEY (id_venda) REFERENCES VENDA (id_venda)
);


/*LOG DO FUNCIONÁRIO*/  
CREATE TABLE LOG_FUNCIONARIO (
    id INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
    id_funcionario INT NOT NULL,
    acao VARCHAR (255) NOT NULL, -- Incluiu, Alterou, Removeu, Consultou
    id_registro INT NOT NULL,
    nm_tabela VARCHAR (255) NOT NULL,
    data_acao TIMESTAMP NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO (id_funcionario)
);


/*
temos que ver como gravar os eventos



CREATE TABLE LOG(
id_log INT NOT NULL 
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1),
datas TIMESTAMP NOT NULL,
id_funcionario INT NOT NULL,



);*/