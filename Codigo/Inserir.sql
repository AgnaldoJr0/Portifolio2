SHOW TABLES FROM loja;
describe ContaReceber;
describe Cliente;
describe Municipio;
describe Estado;


INSERT INTO ContaReceber(id, client_ID, FaturaVendaID, DataConta, DataVencimento, Valor, Situação)
VALUES ('1','1','1','04-05-2014','12-06-2014','100','Conta registrada'),
       ('2','2','2','09-07-2018','09-08-2018','44','Conta paga'),
       ('3','3','3','01-05-2019','10-06-2019','69','Conta cancelada');
       
INSERT INTO Cliente(id, Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) 
VALUES ('1','Emanuel pereira','920.068.380-08','(87) 3377-7842','Rua S-068','123','Anápolis','75096-310','22'),
	   ('2','Enzo Gabriel ','686.875.210-57','(68) 3746-5774','Servidão Morro das Pedras','332','Florianópolis','88066-220','33'),     
       ('3','João Vitor','020.486.950-19','(28) 2748-0464','Rua Alphio Marchetti','144','Araçatuba','16071-250','44');
       
INSERT INTO Municipio(id, Estado_ID, Nome, CodIBGE)
VALUES	('22','GO','Anápolis','5201108'),
		('33','SC','Florianópolis','4205407'),
        ('44','SP','Araçatuba','3502804');
        
INSERT INTO Estado(id, Nome, UF)
VALUES ('GO','Goiás','52'),
       ('SC','Santa Catarina','42'),
       ('SP','São Paulo','35');