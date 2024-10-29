-- Inserindo dados na tabela Fornecedor
INSERT INTO mydb.Fornecedor (cpf_cnpj, nome, valorFrete, email) VALUES
('12345678000195', 'Fornecedor A', 150.00, 'fornecedorA@email.com'),
('23456789000196', 'Fornecedor B', 200.00, 'fornecedorB@email.com'),
('34567890000197', 'Fornecedor C', 120.50, 'fornecedorC@email.com'),
('45678901000198', 'Fornecedor D', 80.00, 'fornecedorD@email.com'),
('56789012000199', 'Fornecedor E', 90.25, 'fornecedorE@email.com'),
('67890123000100', 'Fornecedor F', 60.00, 'fornecedorF@email.com'),
('78901234000101', 'Fornecedor G', 75.75, 'fornecedorG@email.com'),
('89012345000102', 'Fornecedor H', 110.00, 'fornecedorH@email.com'),
('90123456000103', 'Fornecedor I', 145.30, 'fornecedorI@email.com'),
('01234567000104', 'Fornecedor J', 55.90, 'fornecedorJ@email.com');

-- Inserindo dados na tabela Departamento
INSERT INTO mydb.Departamento (idDepartamento, nome, email, localDep) VALUES
(1, 'Vendas', 'vendas@empresa.com', 'Rua A, 123'),
(2, 'Financeiro', 'financeiro@empresa.com', 'Rua B, 456'),
(3, 'Recursos Humanos', 'rh@empresa.com', 'Rua C, 789'),
(4, 'Marketing', 'marketing@empresa.com', 'Rua D, 321'),
(5, 'TI', 'ti@empresa.com', 'Rua E, 654'),
(6, 'Logística', 'logistica@empresa.com', 'Rua F, 987'),
(7, 'Suporte', 'suporte@empresa.com', 'Rua G, 159'),
(8, 'Desenvolvimento', 'desenvolvimento@empresa.com', 'Rua H, 753'),
(9, 'Qualidade', 'qualidade@empresa.com', 'Rua I, 852'),
(10, 'Planejamento', 'planejamento@empresa.com', 'Rua J, 246');

-- Inserindo dados na tabela Empregado
INSERT INTO mydb.Empregado (cpf, nome, sexo, email, ctps, dataAdm, dataDem, salario, comissao, bonificacao) VALUES
('11122233344', 'Carlos Silva', 'M', 'carlos@empresa.com', '12345678', '2022-01-10', NULL, 3000.00, 300.00, 150.00),
('22233344455', 'Maria Oliveira', 'F', 'maria@empresa.com', '23456789', '2022-02-15', NULL, 3500.00, 350.00, 200.00),
('33344455566', 'João Pereira', 'M', 'joao@empresa.com', '34567890', '2022-03-20', NULL, 2800.00, 280.00, 100.00),
('44455566677', 'Ana Costa', 'F', 'ana@empresa.com', '45678901', '2022-04-25', NULL, 3200.00, 320.00, 180.00),
('55566677788', 'Fernando Santos', 'M', 'fernando@empresa.com', '56789012', '2022-05-30', NULL, 2900.00, 290.00, 120.00),
('66677788899', 'Tatiane Lima', 'F', 'tatiane@empresa.com', '67890123', '2022-06-01', NULL, 3100.00, 310.00, 160.00),
('77788899900', 'Roberto Almeida', 'M', 'roberto@empresa.com', '78901234', '2022-07-05', NULL, 3300.00, 330.00, 200.00),
('88899900011', 'Patrícia Mendes', 'F', 'patricia@empresa.com', '89012345', '2022-08-10', NULL, 3400.00, 340.00, 190.00),
('99900011122', 'Leonardo Nascimento', 'M', 'leonardo@empresa.com', '90123456', '2022-09-15', NULL, 3600.00, 360.00, 210.00),
('00011122233', 'Juliana Martins', 'F', 'juliana@empresa.com', '01234567', '2022-10-20', NULL, 3700.00, 370.00, 220.00);

-- Inserindo dados na tabela Cliente
INSERT INTO mydb.Cliente (cpf, nome, email, corresponsavel) VALUES
('33344455566', 'Marcio Silva', 'marcio@cliente.com', 'Lucia Silva'),
('44455566677', 'Fernanda Lima', 'fernanda@cliente.com', 'Carlos Lima'),
('55566677788', 'Robson Santos', 'robson@cliente.com', 'Ana Santos'),
('66677788899', 'Patricia Oliveira', 'patricia@cliente.com', 'Fernando Oliveira'),
('77788899900', 'Roberto Costa', 'roberto@cliente.com', 'Tatiane Costa'),
('88899900011', 'Juliana Almeida', 'juliana@cliente.com', 'Leandro Almeida'),
('99900011122', 'Fabio Nascimento', 'fabio@cliente.com', 'Lucia Nascimento'),
('00011122233', 'Jessica Martins', 'jessica@cliente.com', 'Carlos Martins'),
('11122233344', 'Diego Rodrigues', 'diego@cliente.com', 'Fernanda Rodrigues'),
('22233344455', 'Luciana Mendes', 'luciana@cliente.com', 'Roberto Mendes');

-- Inserindo dados na tabela Telefone
INSERT INTO mydb.Telefone (idTelefone, numero, Fornecedor_cpf_cnpj, Departamento_idDepartamento1, Empregado_cpf, Cliente_cpf) VALUES
(1, '31987654321', '12345678000195', 1, '11122233344', '33344455566'),
(2, '31976543210', '23456789000196', 2, '22233344455', '44455566677'),
(3, '31965432109', '34567890000197', 3, '33344455566', '55566677788'),
(4, '31954321098', '45678901000198', 4, '44455566677', '66677788899'),
(5, '31943210987', '56789012000199', 5, '55566677788', '77788899900'),
(6, '31932109876', '67890123000100', 6, '66677788899', '88899900011'),
(7, '31921098765', '78901234000101', 7, '77788899900', '99900011122'),
(8, '31910987654', '89012345000102', 8, '88899900011', '00011122233'),
(9, '31909876543', '90123456000103', 9, '99900011122', '11122233344'),
(10, '31998765432', '01234567000104', 10, '00011122233', '22233344455');

-- Inserindo dados na tabela Venda
INSERT INTO mydb.Venda (idVenda, data, valor, status_entrega, comissao, desconto, Empregado_cpf, Cliente_cpf) VALUES
(1, '2024-01-10 10:00:00', 500.00, 'Entregue', 50.00, 10.00, '11122233344', '33344455566'),
(2, '2024-01-11 11:00:00', 1500.00, 'Entregue', 150.00, 20.00, '22233344455', '44455566677'),
(3, '2024-01-12 12:00:00', 200.00, 'Pendente', 20.00, 5.00, '33344455566', '55566677788'),
(4, '2024-01-13 13:00:00', 800.00, 'Entregue', 80.00, 15.00, '44455566677', '66677788899'),
(5, '2024-01-14 14:00:00', 950.00, 'Pendente', 95.00, 10.00, '55566677788', '77788899900'),
(6, '2024-01-15 15:00:00', 1200.00, 'Entregue', 120.00, 25.00, '66677788899', '88899900011'),
(7, '2024-01-16 16:00:00', 450.00, 'Entregue', 45.00, 5.00, '77788899900', '99900011122'),
(8, '2024-01-17 17:00:00', 670.00, 'Pendente', 67.00, 10.00, '88899900011', '00011122233'),
(9, '2024-01-18 18:00:00', 300.00, 'Entregue', 30.00, 8.00, '99900011122', '11122233344'),
(10, '2024-01-19 19:00:00', 1100.00, 'Pendente', 110.00, 12.00, '00011122233', '22233344455');

INSERT INTO mydb.Compra (idCompra, dataComp, valortotal, dataVenc, dataPag, desconto, juros, Fornecedor_cpf_cnpj) VALUES
(2, '2024-01-11 11:00:00', 2000.00, '2024-02-11 11:00:00', '2024-01-16 11:00:00', 99.99, 10.00, '23456789000196'),
(3, '2024-01-12 12:00:00', 1500.00, '2024-02-12 12:00:00', '2024-01-17 12:00:00', 75.00, 7.50, '34567890000197'),
(4, '2024-01-13 13:00:00', 300.00, '2024-02-13 13:00:00', '2024-01-18 13:00:00', 15.00, 2.00, '45678901000198'),
(5, '2024-01-14 14:00:00', 800.00, '2024-02-14 14:00:00', '2024-01-19 14:00:00', 40.00, 4.00, '56789012000199'),
(6, '2024-01-15 15:00:00', 1200.00, '2024-02-15 15:00:00', '2024-01-20 15:00:00', 60.00, 6.00, '67890123000100'),
(7, '2024-01-16 16:00:00', 500.00, '2024-02-16 16:00:00', '2024-01-21 16:00:00', 25.00, 2.50, '78901234000101'),
(8, '2024-01-17 17:00:00', 650.00, '2024-02-17 17:00:00', '2024-01-22 17:00:00', 32.50, 3.25, '89012345000102'),
(9, '2024-01-18 18:00:00', 900.00, '2024-02-18 18:00:00', '2024-01-23 18:00:00', 45.00, 4.50, '90123456000103'),
(10, '2024-01-19 19:00:00', 400.00, '2024-02-19 19:00:00', '2024-01-24 19:00:00', 20.00, 2.00, '01234567000104');

INSERT INTO mydb.Estoque (idEstoque, quantidade, data_entrada, data_validade, localizacao, data_atualizacao, data_saida) VALUES
(1, 100, '2024-01-01', '2024-06-01', 'Armazém A', '2024-01-01', NULL),
(2, 200, '2024-01-02', '2024-07-01', 'Armazém B', '2024-01-02', NULL),
(3, 150, '2024-01-03', '2024-08-01', 'Armazém C', '2024-01-03', NULL),
(4, 75, '2024-01-04', '2024-05-01', 'Armazém A', '2024-01-04', NULL),
(5, 250, '2024-01-05', '2024-09-01', 'Armazém B', '2024-01-05', NULL),
(6, 80, '2024-01-06', '2024-04-01', 'Armazém C', '2024-01-06', NULL),
(7, 300, '2024-01-07', '2024-10-01', 'Armazém A', '2024-01-07', NULL),
(8, 120, '2024-01-08', '2024-06-15', 'Armazém B', '2024-01-08', NULL),
(9, 60, '2024-01-09', '2024-05-15', 'Armazém C', '2024-01-09', NULL),
(10, 90, '2024-01-10', '2024-12-01', 'Armazém A', '2024-01-10', NULL);

INSERT INTO mydb.Promocao (idPromocao, nomePromocao, dataInicio, dataFim, percentualDesconto, status) VALUES
(1, 'Promoção de Verão', '2024-01-01', '2024-02-28', 0.15, 'Ativa'),
(2, 'Liquidação de Inverno', '2024-03-01', '2024-04-30', 0.20, 'Ativa'),
(3, 'Black Friday', '2024-11-01', '2024-11-30', 0.30, 'Ativa'),
(4, 'Natal Encantado', '2024-12-01', '2024-12-25', 0.25, 'Ativa'),
(5, 'Feriado da Independência', '2024-09-01', '2024-09-10', 0.10, 'Inativa'),
(6, 'Promoção de Páscoa', '2024-04-01', '2024-04-30', 0.15, 'Ativa'),
(7, 'Dia das Mães', '2024-05-01', '2024-05-12', 0.20, 'Ativa'),
(8, 'Dia dos Pais', '2024-08-01', '2024-08-12', 0.15, 'Ativa'),
(9, 'Semana do Consumidor', '2024-03-10', '2024-03-20', 0.18, 'Ativa'),
(10, 'Promoção de Aniversário', '2024-06-01', '2024-06-30', 0.22, 'Inativa');

INSERT INTO mydb.Cargo (cbo, nome, faixaSalarial) VALUES
(101, 'Desenv. de Software', 'R$ 3.000,00 - R$ 7.000,00'),
(102, 'Analista de Sistemas', 'R$ 4.000,00 - R$ 8.000,00'),
(103, 'Gerente de Projetos', 'R$ 6.000,00 - R$ 12.000,00'),
(104, 'Designer Gráfico', 'R$ 2.500,00 - R$ 5.000,00'),
(105, 'Analista de Dados', 'R$ 4.500,00 - R$ 9.000,00'),
(106, 'Especialista em Mkt', 'R$ 3.500,00 - R$ 7.500,00'),
(107, 'Engenheiro de Soft.', 'R$ 5.000,00 - R$ 10.000,00'),
(108, 'Admin. de Banco de D.', 'R$ 4.000,00 - R$ 8.000,00'),
(109, 'Suporte Técnico', 'R$ 2.000,00 - R$ 4.000,00'),
(110, 'Product Owner', 'R$ 5.500,00 - R$ 11.000,00');

INSERT INTO mydb.Dependentes (cpf, nome, parentesco, dataNasc, Empregado_cpf) VALUES
('12345678901', 'Ana Silva', 'Filha', '2010-05-15', '11122233344'),
('23456789012', 'João Silva', 'Filho', '2012-08-20', '22233344455'),
('34567890123', 'Maria Souza', 'Filha', '2015-03-30', '33344455566'),
('45678901234', 'Pedro Santos', 'Filho', '2018-07-10', '44455566677'),
('56789012345', 'Lucas Pereira', 'Filho', '2011-11-25', '55566677788'),
('67890123456', 'Juliana Costa', 'Filha', '2014-02-05', '66677788899'),
('78901234567', 'Roberto Lima', 'Filho', '2016-09-12', '77788899900'),
('89012345678', 'Fernanda Almeida', 'Filha', '2013-12-19', '88899900011'),
('90123456789', 'Rafael Oliveira', 'Filho', '2017-04-22', '99900011122'),
('01234567890', 'Mariana Ferreira', 'Filha', '2019-06-30', '00011122233');

INSERT INTO mydb.Endereco (Cliente_cpf, uf, cidade, bairro, rua, numero, comp, cep, Fornecedor_cpf_cnpj) VALUES
('33344455566', 'SP', 'São Paulo', 'Jardim Paulista', 'Avenida Paulista', 1578, 'Apto 12', '01310-100', '12345678000195'),
('44455566677', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua Barata Ribeiro', 123, '', '22011-002', '23456789000196'),
('55566677788', 'MG', 'Belo Horizonte', 'Savassi', 'Rua Antônio de Albuquerque', 456, 'Sala 2', '30112-010', '34567890000197'),
('66677788899', 'PR', 'Curitiba', 'Centro', 'Rua XV de Novembro', 789, '', '80010-000', '45678901000198'),
('77788899900', 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Avenida Carlos Gomes', 321, 'Apto 201', '90470-100', '56789012000199'),
('88899900011', 'BA', 'Salvador', 'Barra', 'Avenida Oceânica', 234, 'Casa', '40140-230', '67890123000100'),
('99900011122', 'CE', 'Fortaleza', 'Meireles', 'Rua José de Alencar', 567, 'Condomínio', '60160-000', '78901234000101'),
('00011122233', 'DF', 'Brasília', 'Asa Norte', 'W3 Sul', 890, 'Apto 5', '70710-000', '89012345000102'),
('11122233344', 'SC', 'Florianópolis', 'Centro', 'Rua Dom Jaime Câmara', 111, '', '88015-001', '90123456000103'),
('22233344455', 'ES', 'Vitória', 'Praia do Canto', 'Avenida Dante Michelini', 222, 'Andar 3', '29055-600', '01234567000104');

INSERT INTO mydb.formapgcompra (idFormaPgCompra, tipo, valorPago, Compra_idCompra1) VALUES
(1, 'Dinheiro', 1500.00, 3),
(2, 'Cartão de Crédito', 2000.00, 2),
(3, 'Transferência Bancária', 2500.00, 2),
(4, 'Boleto', 3000.00, 3),
(5, 'Cartão de Débito', 1800.00, 4),
(6, 'Pix', 2200.00, 5),
(7, 'Dinheiro', 1600.00, 6),
(8, 'Cartão de Crédito', 2400.00, 7),
(9, 'Transferência Bancária', 2900.00, 8),
(10, 'Boleto', 2700.00, 9);

INSERT INTO mydb.formapgvenda (idFormaPgVenda, tipo, valorPago, Venda_idVenda) VALUES
(1, 'Dinheiro', 500.00, 1),
(2, 'Cartão de Crédito', 750.00, 2),
(3, 'Transferência Bancária', 300.00, 3),
(4, 'Boleto', 450.00, 4),
(5, 'Cartão de Débito', 600.00, 5),
(6, 'Pix', 800.00, 6),
(7, 'Dinheiro', 400.00, 7),
(8, 'Cartão de Crédito', 900.00, 8),
(9, 'Transferência Bancária', 650.00, 9),
(10, 'Boleto', 550.00, 10);

INSERT INTO mydb.produtos (idProdutos, nome, quantidade, marca, dataVenc, cor, valorVend, tamanho, precoCusro, descricao, Estoque_idEstoque) VALUES
(1, 'Camiseta Polo', 20, 'Marca A', '2025-12-01', 'Azul', 49.90, 'M', 25.00, 'Camiseta polo de algodão', 1),
(2, 'Calça Jeans', 15, 'Marca B', '2025-10-15', 'Preto', 89.90, '42', 50.00, 'Calça jeans confortável', 1),
(3, 'Tênis Esportivo', 10, 'Marca C', '2024-08-30', 'Branco', 129.90, '40', 70.00, 'Tênis para corrida', 2),
(4, 'Jaqueta de Couro', 5, 'Marca D', '2024-11-20', 'Preto', 199.90, 'G', 120.00, 'Jaqueta de couro genuíno', 2),
(5, 'Vestido Floral', 30, 'Marca E', '2025-03-10', 'Vermelho', 79.90, 'P', 40.00, 'Vestido com estampa floral', 3),
(6, 'Camisa Social', 25, 'Marca F', '2025-06-25', 'Branco', 59.90, 'M', 30.00, 'Camisa social de manga longa', 3),
(7, 'Shorts de Praia', 40, 'Marca G', '2025-09-05', 'Azul', 39.90, 'G', 20.00, 'Shorts leve para o verão', 4),
(8, 'Meias Esportivas', 50, 'Marca H', '2026-01-01', 'Cinza', 19.90, 'Único', 5.00, 'Meias confortáveis para esportes', 4),
(9, 'Cinto de Couro', 15, 'Marca I', '2025-04-15', 'Preto', 49.90, 'M', 25.00, 'Cinto de couro legítimo', 5),
(10, 'Bolsa de Lona', 12, 'Marca J', '2025-07-20', 'Bege', 89.90, 'Único', 45.00, 'Bolsa de lona resistente', 5);

INSERT INTO itensVendaProd (Venda_idVenda, Produtos_idProdutos, quantidade, valor, desconto) VALUES 
(2, 1, 2, 49.90, 5.00),   -- Venda 2, Produto: Camiseta Polo
(2, 2, 1, 89.90, 10.00),  -- Venda 2, Produto: Calça Jeans
(4, 3, 3, 129.90, 0.00),  -- Venda 4, Produto: Tênis Esportivo
(4, 4, 2, 199.90, 8.00),  -- Venda 4, Produto: Jaqueta de Couro
(5, 5, 1, 79.90, 20.00),   -- Venda 5, Produto: Vestido Floral
(5, 6, 1, 59.90, 5.00),    -- Venda 5, Produto: Camisa Social
(6, 7, 2, 39.90, 2.00),    -- Venda 6, Produto: Shorts de Praia
(7, 8, 4, 19.90, 1.00),    -- Venda 7, Produto: Meias Esportivas
(8, 9, 2, 49.90, 0.00),     -- Venda 8, Produto: Cinto de Couro
(9, 10, 1, 89.90, 5.00);    -- Venda 9, Produto: Bolsa de Lona

INSERT INTO aplicarpromocao (Produtos_idProdutos, Promocao_idPromocao, Estoque_idEstoque) VALUES 
(1, 1, 1),  -- Camiseta Polo com Promoção 1 no Estoque 1
(1, 2, 1),  -- Camiseta Polo com Promoção 2 no Estoque 1
(2, 1, 2),  -- Calça Jeans com Promoção 1 no Estoque 2
(3, 3, 1),  -- Tênis Esportivo com Promoção 3 no Estoque 1
(4, 2, 2),  -- Jaqueta de Couro com Promoção 2 no Estoque 2
(5, 1, 1),  -- Vestido Floral com Promoção 1 no Estoque 1
(6, 3, 1),  -- Camisa Social com Promoção 3 no Estoque 1
(7, 2, 3),  -- Shorts de Praia com Promoção 2 no Estoque 3
(8, 1, 1),  -- Meias Esportivas com Promoção 1 no Estoque 1
(9, 4, 2);  -- Cinto de Couro com Promoção 4 no Estoque 2

INSERT INTO trabalhar (Departamento_idDepartamento, Empregado_cpf, Cargo_cbo) VALUES
(1, '11122233344', '101'),  -- Departamento 1, Empregado Carlos Silva
(2, '22233344455', '102'),  -- Departamento 2, Empregado Maria Oliveira
(3, '33344455566', '103'),  -- Departamento 3, Empregado João Pereira
(1, '44455566677', '104'),  -- Departamento 1, Empregado Ana Costa
(4, '55566677788', '110'),  -- Departamento 4, Empregado Fernando Santos
(5, '66677788899', '105'),  -- Departamento 5, Empregado Tatiane Lima
(2, '77788899900', '106'),  -- Departamento 2, Empregado Roberto Almeida
(3, '88899900011', '107'),  -- Departamento 3, Empregado Patrícia Mendes
(4, '99900011122', '108'),  -- Departamento 4, Empregado Leonardo Nascimento
(5, '00011122233', '109');  -- Departamento 5, Empregado Juliana Martins

INSERT INTO mydb.Cliente (cpf, nome, email, corresponsavel) VALUES
('12345678901', 'João Silva', 'joao.silva@example.com', 'Maria Silva'),
('98765432100', 'Ana Costa', 'ana.costa@example.com', 'Carlos Costa'),
('45678912300', 'Lucas Almeida', 'lucas.almeida@example.com', 'Paula Almeida'),
('32165498700', 'Mariana Ferreira', 'mariana.ferreira@example.com', 'Roberto Ferreira'),
('15975348620', 'Gabriel Santos', 'gabriel.santos@example.com', 'Cláudia Santos');

INSERT INTO mydb.Compra (idCompra, dataComp, valortotal, dataVenc, dataPag, desconto, juros, Fornecedor_cpf_cnpj) VALUES
(11, '2024-01-20 10:00:00', 1200.00, '2024-02-20 10:00:00', '2024-01-25 10:00:00', 60.00, 6.00, '01234567000104'),  -- Certifique-se que este fornecedor existe
(12, '2024-01-21 11:00:00', 950.00, '2024-02-21 11:00:00', '2024-01-26 11:00:00', 47.50, 4.75, '23456789000196'),  -- Certifique-se que este fornecedor existe
(13, '2024-01-22 12:00:00', 1750.00, '2024-02-22 12:00:00', '2024-01-27 12:00:00', 87.50, 8.75, '34567890000197'),  -- Certifique-se que este fornecedor existe
(14, '2024-01-23 13:00:00', 400.00, '2024-02-23 13:00:00', '2024-01-28 13:00:00', 20.00, 2.00, '45678901000198'),  -- Certifique-se que este fornecedor existe
(15, '2024-01-24 14:00:00', 1100.00, '2024-02-24 14:00:00', '2024-01-29 14:00:00', 55.00, 5.50, '90123456000103');  -- Este fornecedor existe


INSERT INTO mydb.Empregado (cpf, nome, sexo, email, ctps, dataAdm, dataDem, salario, comissao, bonificacao) VALUES
('11122233355', 'André Souza', 'M', 'andre@empresa.com', '11223344', '2022-01-15', NULL, 2800.00, 280.00, 100.00),
('22233344466', 'Sofia Almeida', 'F', 'sofia@empresa.com', '22334455', '2022-02-20', NULL, 3600.00, 360.00, 210.00),
('33344455577', 'Gabriel Rocha', 'M', 'gabriel@empresa.com', '33445566', '2022-03-30', NULL, 3000.00, 300.00, 150.00),
('44455566688', 'Bianca Ferreira', 'F', 'bianca@empresa.com', '44556677', '2022-04-28', NULL, 3100.00, 310.00, 160.00),
('55566677799', 'Rafael Costa', 'M', 'rafael@empresa.com', '55667788', '2022-05-15', NULL, 3200.00, 320.00, 170.00),
('66677788800', 'Fernanda Lima', 'F', 'fernanda@empresa.com', '66778899', '2022-06-12', NULL, 3400.00, 340.00, 180.00),
('77788899911', 'Felipe Martins', 'M', 'felipe@empresa.com', '77889900', '2022-07-20', NULL, 3500.00, 350.00, 190.00),
('88899900022', 'Cláudia Nunes', 'F', 'claudia@empresa.com', '88990011', '2022-08-22', NULL, 3300.00, 330.00, 160.00),
('99900011133', 'Eduardo Mendes', 'M', 'eduardo@empresa.com', '99001122', '2022-09-05', NULL, 3700.00, 370.00, 210.00),
('00011122244', 'Camila Dias', 'F', 'camila@empresa.com', '00112233', '2022-10-10', NULL, 3800.00, 380.00, 220.00);

INSERT INTO trabalhar (Departamento_idDepartamento, Empregado_cpf, Cargo_cbo) VALUES
(6, '11122233355', '101'), 
(6, '22233344466', '102'),  
(7, '33344455577', '103'),  
(7, '44455566688', '104'),  
(8, '55566677799', '110'),  
(8, '66677788800', '105'),  
(9, '77788899911', '106'),  
(9, '88899900022', '107'),  
(10, '99900011133', '108'),  
(10, '00011122244', '109');  

ALTER TABLE mydb.Fornecedor
ADD COLUMN telefone VARCHAR(15) AFTER email;

ALTER TABLE mydb.Cliente
ADD COLUMN dataNasc DATE AFTER email;

ALTER TABLE mydb.Departamento
MODIFY COLUMN localDep VARCHAR(100);

ALTER TABLE mydb.Empregado
ADD COLUMN cargo VARCHAR(45) AFTER nome;

ALTER TABLE mydb.Cliente
DROP COLUMN corresponsavel;

ALTER TABLE mydb.Venda
ADD COLUMN status VARCHAR(20) NOT NULL DEFAULT 'pendente' AFTER desconto;

ALTER TABLE mydb.Produtos
MODIFY COLUMN quantidade INT NOT NULL;

ALTER TABLE mydb.Endereco
ADD COLUMN Empregado_cpf VARCHAR(14),
ADD CONSTRAINT fk_Endereco_Empregado
FOREIGN KEY (Empregado_cpf)
REFERENCES mydb.Empregado(cpf)
ON DELETE SET NULL ON UPDATE CASCADE;

CREATE INDEX idx_data_venda ON mydb.Venda(data);

ALTER TABLE produtos 
ADD COLUMN Fornecedor_cpf_cnpj VARCHAR(14);

ALTER TABLE produtos 
ADD CONSTRAINT fk_Produtos_Fornecedor
FOREIGN KEY (Fornecedor_cpf_cnpj) REFERENCES fornecedor(cpf_cnpj);
