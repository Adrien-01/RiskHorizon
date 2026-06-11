CREATE TABLE  `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI` AS
SELECT
  ml.AGE AS age
, ml.AMT_CREDIT AS montant_credit
, ml.AMT_GOODS_PRICE AS valeur_bien
, ml.AMT_INCOME_TOTAL AS revenus_annuel
, ml.APPORT_ESTIME AS apport_estime
, ml.CNT_CHILDREN AS nb_enfants
, ml.CODE_GENDER AS genre
, ml.dette_totale_ext AS dette_totale_ext
, ml.EXT_SOURCE_1 AS score_1_ext
, ml.EXT_SOURCE_2 AS score_2_ext
, ml.EXT_SOURCE_3 AS score_3_ext
, ml.FLAG_OWN_REALTY AS proprietaire_logement
, ml.impact_coef_1
, ml.impact_coef_2
, ml.impact_coef_3
, ml.sens_impact_1
, ml.sens_impact_2
, ml.sens_impact_3
, ml.montant_total_emprunte_passe_int AS montant_total_emprunte_passe_int
, ml.montant_total_retard_ext AS montant_total_retard_ext
, ml.NAME_CONTRACT_TYPE AS type_emprunt
, ml.NAME_EDUCATION_TYPE AS niveau_scolaire
, ml.NAME_FAMILY_STATUS AS statut_familial
, ml.nb_credits_actifs_ext AS nb_credit_actifs_ext
, ml.nb_credits_clotures_ext AS nb_credit_clotures_ext
, ml.nb_demandes_passees_int AS nb_demandes_credit_passees_int
, ml.nb_refus_passes_int AS nb_refus_credit_passes_int
, ml.nb_types_credit_ext AS nb_types_credit_ext
, ml.ORGANIZATION_TYPE AS secteur_emploi
, ml.PREDICTION_FINALE AS prediction_finale
, ml.proba_defaut AS proba_defaut
, ml.ratio_dette_credit_ext AS ratio_dette_credit_ext
, ml.RATIO_PRET AS ratio_pret
, ml.Reste_a_vivre AS reste_a_vivre
, ml.Reste_a_vivre_par_personne AS reste_a_vivre_par_personne
, ml.SK_ID_CURR AS ref_client
, ml.TARGET AS target
, ml.total_credit_ext AS montant_total_pret_ext
, ml.tx_endettement AS taux_endettement
, ml.variable_dominante_1
, ml.variable_dominante_2
, ml.variable_dominante_3
, ml.YEARS_EMPLOYED AS temps_emploi
-- table octroi
, tab.AMT_ANNUITY AS montant_annuite
, tab.AVG_CREDIT_SCORE AS moyenne_credit_score_ext
, tab.capacite_bancaire AS capacite_bancaire
, tab.FLAG_OWN_CAR AS proprietaire_voiture
, tab.NAME_INCOME_TYPE AS source_revenus
, tab.nb_credits_en_retard_ext AS nb_credit_en_retard_ext
, tab.nb_credits_ext AS nb_credits_ext
, tab.nb_prolongations_ext AS nb_prolongations_ext
, tab.ratio_annuity_revenu AS ratio_annuite_revenus
, tab.ratio_credit_revenu AS ratio_montant_demande_revenus
, tab.ratio_dette_ext_revenu AS ratio_dette_ext_revenu
, tab.RECOMMANDATION_IA AS score_octroi_recommandation
, tab.Reflag_FR AS reflag_tx_endettement
, tab.retard_max_ext AS nb_max_jours_retard_paiement_ext
, tab.revenu_mensuel AS revenu_mensuel
, tab.SCORE_OCTROI AS score_octroi
, COUNT(ml.AMT_CREDIT) OVER() AS total_credit_absolu
, SUM(ml.AMT_CREDIT) OVER() AS montant_credit_absolu
FROM `projet-riskhorizon-2276.3_Mart.tableau_final_HistGradientBoostingClassifier_v2` AS ml
LEFT JOIN `projet-riskhorizon-2276.3_Mart.tableau_final_table_octroi` AS tab
USING (SK_ID_CURR);