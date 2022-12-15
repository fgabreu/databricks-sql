-- Databricks notebook source
-- 1 Lista de pedidos com mais de um item
SELECT *
FROM silver_olist.item_pedido
WHERE idPedidoItem > 1

-- COMMAND ----------

-- 2 Lista de Pedidos aonde o frete é mais caro que o item

SELECT *
FROM silver_olist.item_pedido
WHERE vlFrete > vlPreco

-- COMMAND ----------

-- 3 Lista de pedidos que ainda não foram enviados
