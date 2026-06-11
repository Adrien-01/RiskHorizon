CREATE TABLE  `projet-riskhorizon-2276.3_Mart.tableau_final` AS
SELECT
    a.*,
    b.* EXCEPT (SK_ID_CURR),
    p.* EXCEPT (SK_ID_CURR)

FROM  `projet-riskhorizon-2276.2_Intermediate.Application_train_ratio` a
LEFT JOIN `projet-riskhorizon-2276.2_Intermediate.bureau_aggrege` b
    USING (SK_ID_CURR)

LEFT JOIN `projet-riskhorizon-2276.2_Intermediate.Previous_app_new_view` p
    USING (SK_ID_CURR) ;