-- Databricks notebook source
-- 1 Qual categoria tem mais produtos vendidos?
SELECT T2.descCategoria,
       COUNT(T1.idPedido) AS qtdeProdutosVendidos
       
FROM silver_olist.item_pedido AS T1 --tabelas de vendas

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY qtdeProdutosVendidos DESC
LIMIT 1


-- COMMAND ----------

-- 2 - Qual categoria tem produtos mais caros, em média?
SELECT T2.descCategoria,
       ROUND(AVG(T1.vlPreco),2) AS mediaPreco,
       MAX(T1.vlPreco) precoMaximo     

FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY precoMaximo DESC, mediaPreco

-- COMMAND ----------

-- 3 - Os clientes de qual estado pagam mais frete? E traga os que pagam mais de R$ 40.00 de media de frete
SELECT 
       T3.descUF,
       ROUND(AVG(T1.vlFrete),2) AS mediaVlFrete 
        
FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente

GROUP BY T3.descUF
HAVING mediaVlFrete > 40
ORDER BY mediaVlFrete DESC


