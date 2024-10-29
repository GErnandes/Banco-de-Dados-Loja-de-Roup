-- View para obter informações de vendas por cliente
CREATE VIEW vw_VendasPorCliente AS
SELECT 
    c.nome AS ClienteNome,
    COUNT(v.idVenda) AS TotalVendas,
    SUM(v.valor) AS ValorTotalVendas,
    AVG(v.valor) AS MediaValorVenda
FROM 
    mydb.Cliente c
LEFT JOIN 
    mydb.Venda v ON c.cpf = v.Cliente_cpf
GROUP BY 
    c.cpf;

-- View para obter detalhes das compras feitas a um fornecedor
CREATE VIEW vw_DetalhesComprasFornecedor AS
SELECT 
    f.nome AS FornecedorNome,
    c.idCompra,
    c.dataComp,
    c.valortotal,
    c.desconto,
    c.juros
FROM 
    mydb.Compra c
JOIN 
    mydb.Fornecedor f ON c.Fornecedor_cpf_cnpj = f.cpf_cnpj;

-- View para obter o estoque de produtos
CREATE VIEW vw_EstoqueProdutos AS
SELECT 
    p.nome AS ProdutoNome,
    e.quantidade,
    e.localizacao,
    e.data_validade
FROM 
    mydb.Produtos p
JOIN 
    mydb.Estoque e ON p.Estoque_idEstoque = e.idEstoque;

-- View para obter informações de empregados por departamento
CREATE VIEW vw_ResumoEmpregadosPorDepartamento AS
SELECT 
    d.nome AS DepartamentoNome,
    COUNT(e.cpf) AS TotalEmpregados,
    AVG(e.salario) AS MediaSalario
FROM 
    mydb.Departamento d
LEFT JOIN 
    mydb.Trabalhar t ON d.idDepartamento = t.Departamento_idDepartamento
LEFT JOIN 
    mydb.Empregado e ON t.Empregado_cpf = e.cpf
GROUP BY 
    d.idDepartamento;

-- View para obter o desempenho de vendas por empregado
CREATE VIEW vw_VendasPorEmpregado AS
SELECT 
    e.nome AS EmpregadoNome,
    COUNT(v.idVenda) AS TotalVendas,
    SUM(v.valor) AS ValorTotalVendas,
    AVG(v.valor) AS MediaValorVenda
FROM 
    mydb.Empregado e
LEFT JOIN 
    mydb.Venda v ON e.cpf = v.Empregado_cpf
GROUP BY 
    e.cpf;

-- View para obter promoções aplicadas a produtos
CREATE VIEW vw_PromocoesProdutos AS
SELECT 
    p.nome AS ProdutoNome,
    pr.nomePromocao,
    pr.percentualDesconto,
    a.Estoque_idEstoque
FROM 
    mydb.AplicarPromocao a
JOIN 
    mydb.Produtos p ON a.Produtos_idProdutos = p.idProdutos
JOIN 
    mydb.Promocao pr ON a.Promocao_idPromocao = pr.idPromocao;

-- View para obter o total de dependentes por empregado
CREATE VIEW vw_TotalDependentesPorEmpregado AS
SELECT 
    e.nome AS EmpregadoNome,
    COUNT(d.cpf) AS TotalDependentes
FROM 
    mydb.Empregado e
LEFT JOIN 
    mydb.Dependentes d ON e.cpf = d.Empregado_cpf
GROUP BY 
    e.cpf;

-- View para obter os endereços dos clientes
CREATE VIEW vw_EnderecosClientes AS
SELECT 
    c.nome AS ClienteNome,
    e.uf,
    e.cidade,
    e.bairro,
    e.rua,
    e.numero,
    e.cep
FROM 
    mydb.Cliente c
JOIN 
    mydb.Endereco e ON c.cpf = e.Cliente_cpf;

-- View para obter os produtos com estoque baixo
CREATE VIEW vw_ProdutosComEstoqueBaixo AS
SELECT 
    p.nome AS ProdutoNome,
    e.quantidade
FROM 
    mydb.Produtos p
JOIN 
    mydb.Estoque e ON p.Estoque_idEstoque = e.idEstoque
WHERE 
    e.quantidade < 10;

-- View para obter o resumo de vendas e compras
CREATE VIEW vw_ResumoVendasCompras AS
SELECT 
    'Venda' AS Tipo,
    v.idVenda AS ID,
    v.data AS Data,
    v.valor AS Valor
FROM 
    mydb.Venda v
UNION ALL
SELECT 
    'Compra' AS Tipo,
    c.idCompra AS ID,
    c.dataComp AS Data,
    c.valortotal AS Valor
FROM 
    mydb.Compra c;

-- Para ver as vendas por cliente
SELECT * FROM vw_VendasPorCliente;

-- Para ver os detalhes das compras feitas a um fornecedor
SELECT * FROM vw_DetalhesComprasFornecedor;

-- Para ver o estoque de produtos
SELECT * FROM vw_EstoqueProdutos;

-- Para ver o resumo de empregados por departamento
SELECT * FROM vw_ResumoEmpregadosPorDepartamento;

-- Para ver o desempenho de vendas por empregado
SELECT * FROM vw_VendasPorEmpregado;

-- Para ver promoções aplicadas a produtos
SELECT * FROM vw_PromocoesProdutos;

-- Para ver o total de dependentes por empregado
SELECT * FROM vw_TotalDependentesPorEmpregado;

-- Para ver os endereços dos clientes
SELECT * FROM vw_EnderecosClientes;

-- Para ver os produtos com estoque baixo
SELECT * FROM vw_ProdutosComEstoqueBaixo;

-- Para ver o resumo de vendas e compras
SELECT * FROM vw_ResumoVendasCompras;