SET SQL_SAFE_UPDATES = 0;

-- Deletar um cliente específico pelo CPF
DELETE FROM mydb.Cliente WHERE cpf = '33344455566';

DELETE FROM mydb.Cliente WHERE cpf = '55566677788';

-- Deletar um fornecedor específico pelo CNPJ
DELETE FROM mydb.Fornecedor WHERE cpf_cnpj = '12345678000195';

-- Deletar todos os fornecedores que têm valor de frete maior que 100.00
DELETE FROM mydb.Fornecedor WHERE valorFrete > 100.00;

-- Deletar uma compra específica pelo ID
DELETE FROM mydb.compra WHERE idCompra = 1;

-- Deletar todas as compras que foram feitas antes de uma data específica
DELETE FROM mydb.compra WHERE dataComp < '2023-01-01';

-- Deletar um endereço específico pelo CPF do cliente
DELETE FROM mydb.Endereco WHERE Cliente_cpf = '33344455566';

-- Deletar todos os endereços em um estado específico
DELETE FROM mydb.Endereco WHERE uf = 'RJ';

-- Deletar um método de pagamento de compra específico pelo ID
DELETE FROM mydb.formapgcompra WHERE idFormaPgCompra = 1;

-- Deletar todos os métodos de pagamento com valor pago menor que 50.00
DELETE FROM mydb.formapgcompra WHERE valorPago < 50.00;

-- Atualizar o email de um cliente específico
UPDATE mydb.Cliente SET email = 'novoemail@cliente.com' WHERE cpf = '33344455566';

-- Atualizar o valor de frete de um fornecedor específico
UPDATE mydb.Fornecedor SET valorFrete = 120.00 WHERE cpf_cnpj = '12345678000195';

-- Atualizar o valor total de uma compra específica
UPDATE mydb.compra SET valortotal = 500.00 WHERE idCompra = 1;

-- Atualizar o estado de um endereço específico
UPDATE mydb.Endereco SET uf = 'MG' WHERE Cliente_cpf = '33344455566';

-- Atualizar o tipo de pagamento de uma forma de pagamento específica
UPDATE mydb.formapgcompra SET tipo = 'Cartão de Crédito' WHERE idFormaPgCompra = 1;

-- Atualizar o nome de um cliente específico
UPDATE mydb.Cliente SET nome = 'Marcio Oliveira' WHERE cpf = '33344455566';

-- Atualizar o bairro de um endereço específico
UPDATE mydb.Endereco SET bairro = 'Jardim das Flores' WHERE Cliente_cpf = '33344455566';

-- Atualizar o valor pago de um método de pagamento específico
UPDATE mydb.formapgcompra SET valorPago = 150.00 WHERE idFormaPgCompra = 1;

-- Atualizar o número de um endereço específico
UPDATE mydb.Endereco SET numero = 999 WHERE Cliente_cpf = '33344455566';

-- Atualizar a data de vencimento de uma compra específica
UPDATE mydb.compra SET dataVenc = '2024-01-01' WHERE idCompra = 1;
