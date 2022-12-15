-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas -- linhas não nulas
FROM silver_olist.cliente


-- COMMAND ----------

SELECT 
    COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
    COUNT(idCliente) AS nrIdClienteNaoNulo,  --id de clientes não nulos
    COUNT(DISTINCT idCliente) AS nrIdClientesDistintos, -- id de clientes distintos
    COUNT(DISTINCT idClienteUnico) AS nrIdClienteUnicoDistintos -- conta id de clientes únicos distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) as qtdLinhas,
  COUNT(distinct idCliente) AS qtClientes,
  COUNT(distinct idClienteUnico) AS qtClientesUnicos
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')

-- COMMAND ----------

SELECT 
  ROUND(AVG(VlPreco), 2) AS avgPreco, -- media da coluna vlPreco (preço médio dos produtos)
  INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco,  --preço mediano dos produtos
  MAX(vlPreco) AS maxPreco,  -- maximo da coluna vlPreco
  AVG(vlFrete) AS avgFrete,  -- media da coluna vlFrete
  MAX(vlFrete) AS maxFrete, --maximo valor frete
  MIN(vlFrete) AS minFrete -- minimo valor frete
FROM silver_olist.item_pedido


-- COMMAND ----------

SELECT  COUNT(*)
FROM silver_olist.cliente
WHERE descUF = 'SC'
