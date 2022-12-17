-- Databricks notebook source
-- Selecionando todas as colunas da tabela "pedido"
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

-- Selecionando a coluna "idPedido" da tabela "pedido"
SELECT idPedido
FROM silver_olist.pedido

-- COMMAND ----------

-- Selecionando as colunas "idPedido e descSituacao" da tabela "pedido"
SELECT idPedido,
       descSituacao
FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------

-- Calculando a diferença entre datas
SELECT *,
      DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega 
FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------


