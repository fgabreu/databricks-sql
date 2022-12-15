-- Databricks notebook source
-- Filtrando a coluna "descSituaçao" na qual a situação do pedido seja igual a "shipped"
SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'


-- COMMAND ----------

--filtrando agora em duas condições: descSituacao e dtPedido = 2018  "AND"
SELECT * 
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'

-- COMMAND ----------

--filtrando agora em duas condições sendo que uma das duas já atende a situação: descSituacao e dtPedido = 2018  "OR"
SELECT * 
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao= 'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

-- outra forma de fazer a query anterir, porém de outra forma
SELECT * 
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

-- Selecionando todas as colunas com os pedidos na situação 'shipped' ou 'canceled' no ano de 2018 e com o prazo de entrega acima de 30 dias.
SELECT * ,
        DATEDIFF(dtEstimativaEntrega, dtAprovado) AS diffDatasAprovadoPrevisao
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30
