-- 1. Listar todos os produtos disponíveis no estoque.
SELECT p.nome, p.quantidade, p.marca
FROM Produtos p
JOIN Estoque e ON p.Estoque_idEstoque = e.idEstoque;

-- 2. Mostrar as compras realizadas por um fornecedor específico.
SELECT c.idCompra, c.dataComp, c.valortotal
FROM Compra c
JOIN Fornecedor f ON c.Fornecedor_cpf_cnpj = f.cpf_cnpj
WHERE f.nome = 'Fornecedor J';  -- Substitua 'Fornecedor A' pelo nome desejado

-- 3. Obter o total de vendas por funcionário.
SELECT e.nome, SUM(v.valor) AS total_vendas
FROM Venda v
JOIN Empregado e ON v.Empregado_cpf = e.cpf
GROUP BY e.nome;

-- 4. Listar todos os clientes e seus respectivos endereços.
SELECT cl.nome, e.rua, e.numero, e.cidade, e.uf
FROM Cliente cl
JOIN Endereco e ON cl.cpf = e.Cliente_cpf;

-- 5. Mostrar a comissão total recebida por cada vendedor.
SELECT e.nome, SUM(v.comissao) AS total_comissao
FROM Venda v
JOIN Empregado e ON v.Empregado_cpf = e.cpf
GROUP BY e.nome;

-- 6. Obter detalhes das vendas, incluindo produtos vendidos e seus preços.
SELECT v.idVenda, p.nome, iv.quantidade, iv.valor
FROM itensVendaProd iv
JOIN Venda v ON iv.Venda_idVenda = v.idVenda
JOIN Produtos p ON iv.Produtos_idProdutos = p.idProdutos;

-- 7. Listar promoções aplicadas a produtos específicos.
SELECT p.nome, pr.nomePromocao, pr.percentualDesconto
FROM AplicarPromocao ap
JOIN Produtos p ON ap.Produtos_idProdutos = p.idProdutos
JOIN Promocao pr ON ap.Promocao_idPromocao = pr.idPromocao;

-- 8. Mostrar a quantidade total de produtos vendidos em um determinado período.
SELECT SUM(iv.quantidade) AS total_vendidos
FROM itensVendaProd iv
JOIN Venda v ON iv.Venda_idVenda = v.idVenda
WHERE v.data BETWEEN '2024-01-01' AND '2024-12-31';  -- Altere as datas conforme necessário

-- 9. Listar fornecedores que têm produtos em estoque.
SELECT DISTINCT f.nome
FROM fornecedor f
JOIN produtos p ON f.cpf_cnpj = p.Fornecedor_cpf_cnpj
WHERE p.quantidade > 0
LIMIT 1000;

-- 10. Obter o valor total de compras feitas por um cliente específico.
SELECT SUM(c.valortotal) AS total_compras
FROM Compra c
WHERE c.Fornecedor_cpf_cnpj = '23456789000196';  -- Substitua pelo CPF/CNPJ do fornecedor desejado

-- 11. Mostrar os empregados que trabalharam em um determinado departamento.
SELECT e.nome
FROM Empregado e
JOIN Trabalhar t ON e.cpf = t.Empregado_cpf
JOIN Departamento d ON t.Departamento_idDepartamento = d.idDepartamento
WHERE d.nome = 'Financeiro';  -- Substitua 'Departamento X' pelo nome do departamento

-- 12. Listar todos os dependentes de um empregado.
SELECT d.nome, d.parentesco
FROM Dependentes d
JOIN Empregado e ON d.Empregado_cpf = e.cpf
WHERE e.nome = 'Carlos Silva';

-- 13. Mostrar produtos que estão prestes a vencer.
SELECT p.nome, p.dataVenc
FROM Produtos p
WHERE p.dataVenc < NOW() + INTERVAL 30 DAY;  -- Produtos que vencem nos próximos 30 dias

-- 14. Obter a lista de compras com seus respectivos métodos de pagamento.
SELECT c.idCompra, f.tipo, f.valorPago
FROM Compra c
JOIN FormaPgCompra f ON c.idCompra = f.Compra_idCompra1;

-- 15. Listar produtos que estão em promoção.
SELECT p.nome, pr.nomePromocao
FROM Produtos p
JOIN AplicarPromocao ap ON p.idProdutos = ap.Produtos_idProdutos
JOIN Promocao pr ON ap.Promocao_idPromocao = pr.idPromocao;

-- 16. Mostrar o estoque total de produtos por categoria.
SELECT e.localizacao, SUM(p.quantidade) AS total_estoque
FROM Estoque e
JOIN Produtos p ON e.idEstoque = p.Estoque_idEstoque
GROUP BY e.localizacao;

-- 17. Listar os empregados que receberam bonificações.
SELECT e.nome, e.bonificacao
FROM Empregado e
WHERE e.bonificacao IS NOT NULL;

-- 18. Mostrar a média de vendas por mês.
SELECT MONTH(v.data) AS mes, AVG(v.valor) AS media_vendas
FROM Venda v
GROUP BY mes;

-- 19. Obter o número total de clientes cadastrados.
SELECT COUNT(*) AS total_clientes
FROM Cliente;

-- 20. Mostrar as promoções que estão ativas no momento.
SELECT p.nomePromocao
FROM Promocao p
WHERE p.status = 'Ativa';

