CREATE TABLE  `projet-riskhorizon-2276.2_Intermediate.bureau_aggrege` AS
SELECT
    SK_ID_CURR,


    -- Nombre total de crédits externes
    COUNT(SK_ID_BUREAU) AS nb_credits_externes,


    -- Nombre de crédits actifs
    SUM(CASE
            WHEN CREDIT_ACTIVE = 'ACTIVE' THEN 1
            ELSE 0
        END) AS nb_credits_actifs,


    -- Nombre de crédits clôturés
    SUM(CASE
            WHEN CREDIT_ACTIVE = 'CLOSED' THEN 1
            ELSE 0
        END) AS nb_credits_clotures,


    -- Montant total des crédits
    SUM(COALESCE(AMT_CREDIT_SUM, 0)) AS total_credit_externe,


    -- Dette totale restante
    SUM(COALESCE(AMT_CREDIT_SUM_DEBT, 0)) AS dette_externe_totale,


    -- Ratio dette / crédit
    SAFE_DIVIDE(
        SUM(COALESCE(AMT_CREDIT_SUM_DEBT, 0)),
        SUM(COALESCE(AMT_CREDIT_SUM, 0))
    ) AS ratio_dette_credit,


    -- Nombre de crédits en retard
    SUM(CASE
            WHEN CREDIT_DAY_OVERDUE > 0 THEN 1
            ELSE 0
        END) AS nb_credits_en_retard,


    -- Retard maximal observé
    MAX(COALESCE(CREDIT_DAY_OVERDUE, 0)) AS retard_max,


    -- Montant total en retard
    SUM(COALESCE(AMT_CREDIT_SUM_OVERDUE, 0)) AS montant_total_retard,


    -- Nombre total de prolongations
    SUM(COALESCE(CNT_CREDIT_PROLONG, 0)) AS nb_prolongations,


    -- Diversité des types de crédits
    COUNT(DISTINCT CREDIT_TYPE) AS nb_types_credit


FROM `projet-riskhorizon-2276.2_Intermediate.bureau_nettoyee`


GROUP BY SK_ID_CURR;
