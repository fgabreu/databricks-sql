-- Databricks notebook source
SELECT *,
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'RJ' THEN 'Fluminense'
        WHEN descUF = 'PR' THEN 'Paranaense'
        ELSE 'Outros'
      END AS descNacionalidade
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
      CASE 
        WHEN descUF = 'SP' THEN 'Paulista' 
        WHEN descUF = 'RJ' THEN 'Fluminense'
        WHEN descUF = 'PR' THEN 'Paranaense'
        ELSE 'Outros'
      END AS descNacionalidade,
      CASE
        WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
        ELSE 'Não tem são no nome'
      END AS descCidadeSao
FROM silver_olist.cliente

-- COMMAND ----------

SELECT *,
        CASE WHEN descUF in ('SP', 'MG', 'RJ', 'ES') THEN 'Sudeste'
        END as descRegiao
FROM silver_olist.vendedor
