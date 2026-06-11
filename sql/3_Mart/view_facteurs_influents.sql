CREATE TABLE  `projet-riskhorizon-2276.3_Mart.view_facteurs_influents` AS
WITH facteurs AS (

SELECT
"Taux d’endettement" AS indicateur,
ROUND(AVG(taux_endettement),2) AS score
FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`

UNION ALL

SELECT
"Reste à vivre",
ROUND(AVG(reste_a_vivre_par_personne),2)
FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`

UNION ALL

SELECT
"Dette externe",
ROUND(AVG(ratio_dette_ext_revenu),2)
FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`

UNION ALL

SELECT
"Retards crédit",
ROUND(AVG(nb_credit_en_retard_ext),2)
FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`

UNION ALL

SELECT
"Score crédit",
ROUND(AVG(moyenne_credit_score_ext),2)
FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`

)

SELECT *
FROM facteurs
ORDER BY score DESC



