-- Databricks notebook source
SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY descUF

-- COMMAND ----------

-- Primeira forma de ordenar

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY 2  --ordernar pela 2º coluna da sua consulta

-- COMMAND ----------

-- Segunda forma de ordenar

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

-- Terceira forma de ordenar (forma mais explicita)

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

-- Terceira forma de ordenar (forma mais explicita) Decrescente

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado DESC

-- COMMAND ----------

-- trazendo apenas o que tem a maior qtde de clientes

SELECT
  descUF,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qtClienteEstado DESC
LIMIT 1
