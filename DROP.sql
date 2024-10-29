-- Destruir todas as tabelas
DROP TABLE IF EXISTS `mydb`.`itensVendaProd`;
DROP TABLE IF EXISTS `mydb`.`formapgvenda`;
DROP TABLE IF EXISTS `mydb`.`Venda`;
DROP TABLE IF EXISTS `mydb`.`promocoes`;
DROP TABLE IF EXISTS `mydb`.`telefone`;
DROP TABLE IF EXISTS `mydb`.`endereco`;
DROP TABLE IF EXISTS `mydb`.`formapgcompra`;
DROP TABLE IF EXISTS `mydb`.`trabalhar`;
DROP TABLE IF EXISTS `mydb`.`cargo`;
DROP TABLE IF EXISTS `mydb`.`departamento`;
DROP TABLE IF EXISTS `mydb`.`dependentes`;
DROP TABLE IF EXISTS `mydb`.`aplicarpromocao`;
DROP TABLE IF EXISTS `mydb`.`promocao`;
DROP TABLE IF EXISTS `mydb`.`Cliente`;
DROP TABLE IF EXISTS `mydb`.`empregado`;
DROP TABLE IF EXISTS `mydb`.`compra`;
DROP TABLE IF EXISTS `mydb`.`produtos`;
DROP TABLE IF EXISTS `mydb`.`estoque`;
DROP TABLE IF EXISTS `mydb`.`fornecedor`;


-- Destruir todas as views
DROP VIEW IF EXISTS `mydb`.` vw_VendasPorCliente`;
DROP VIEW IF EXISTS `mydb`.`vw_DetalhesComprasFornecedor`;
DROP VIEW IF EXISTS `mydb`.`vw_EstoqueProdutos`;
DROP VIEW IF EXISTS `mydb`.`vw_ResumoEmpregadosPorDepartamento`;
DROP VIEW IF EXISTS `mydb`.`vw_VendasPorEmpregado`; 
DROP VIEW IF EXISTS `mydb`.`vw_PromocoesProdutos`;
DROP VIEW IF EXISTS `mydb`.`vw_TotalDependentesPorEmpregados`;
DROP VIEW IF EXISTS `mydb`.`vw_EnderecosClientes`;
DROP VIEW IF EXISTS `mydb`.`vw_ProdutosComEstoqueBaixo`;
DROP VIEW IF EXISTS `mydb`.`vw_ResumoVendasCompras`;