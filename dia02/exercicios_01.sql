-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- 02 Selecione todos os clientes Paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 3 - Seleciona todos vendedores cariocas e paulistas
SELECT *
FROM silver_olist.vendedor
WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'


-- COMMAND ----------

-- 4 Selecione produtos de perfumaria e bebes com altura maior que 5cm
SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > 5
