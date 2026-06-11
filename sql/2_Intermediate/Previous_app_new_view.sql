CREATE TABLE  `projet-riskhorizon-2276.2_Intermediate.Previous_app_new_view` AS
SELECT
    SK_ID_CURR,

    COUNT(SK_ID_PREV) AS nb_demandes_passees_int,

    COUNTIF(NAME_CONTRACT_STATUS = 'Refused') AS nb_refus_passes_int,

    SUM(IF(NAME_CONTRACT_STATUS = 'Approved', AMT_CREDIT, 0)) as montant_total_emprunte_passe_int,


FROM `projet-riskhorizon-2276.2_Intermediate.previous_application_nettoyee` 
GROUP BY SK_ID_CURR
order by montant_total_emprunte_passe_int desc

