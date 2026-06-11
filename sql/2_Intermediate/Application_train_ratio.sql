CREATE TABLE  `projet-riskhorizon-2276.2_Intermediate.Application_train_ratio` AS
SELECT
  *,
  AMT_GOODS_PRICE - AMT_CREDIT AS APPORT_ESTIME,
  ROUND(AMT_CREDIT / AMT_GOODS_PRICE, 2) AS RATIO_PRET
FROM `projet-riskhorizon-2276.2_Intermediate.train_enrichie_credit_score`