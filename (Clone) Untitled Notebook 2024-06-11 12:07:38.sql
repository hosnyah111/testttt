-- Databricks notebook source
-- "B259","B260","A749", "D545", "D546", "0011", "8347", "4859", "D507", "B597", 
SELECT * FROM(
  SELECT * FROM dp_osi_ap_ecc.t001w
  UNION
  SELECT * FROM dp_osi_ap_anp_ecc.t001w
  UNION
  SELECT * FROM dp_sap_emea.t001w
)

-- COMMAND ----------

SELECT * 
FROM dp_sap_emea.t001w
Where werks = 'D546'

-- COMMAND ----------

select distinct right(material,8) as mat,right(case_gtin_text,13) as case_ean,right(item_gtin_text,13) as corp_item_gtin,material_text as Descriptionn,brand as brandd from dp_inventory.matl_dim where case_gtin_text is not null and item_gtin_text is not null
