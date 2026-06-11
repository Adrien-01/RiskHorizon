CREATE TABLE  `projet-riskhorizon-2276.3_Mart.view_final_rename_variables_dominante`
SELECT
SK_ID_CURR,
`TARGET`,
proba_defaut,
prediction_finale,
impact_coef_1,
sens_impact_1,
impact_coef_2,
impact_coef_3,sens_impact_3, EXT_SOURCE_2, NAME_EDUCATION_TYPE, AMT_GOODS_PRICE, EXT_SOURCE_1, EXT_SOURCE_3, montant_total_emprunte_passe_int, CODE_GENDER, ratio_dette_credit_ext, nb_refus_passes_int, FLAG_OWN_REALTY, dette_totale_ext, NAME_FAMILY_STATUS, AGE, YEARS_EMPLOYED, AMT_CREDIT, total_credit_ext, montant_total_retard_ext, nb_credits_clotures_ext, nb_credits_actifs_ext, nb_demandes_passees_int, CNT_CHILDREN, nb_types_credit_ext, AMT_INCOME_TOTAL, RATIO_PRET, ORGANIZATION_TYPE, tx_endettement, Reste_a_vivre_par_personne, NAME_CONTRACT_TYPE, Reste_a_vivre, APPORT_ESTIME,
CASE
WHEN variable_dominante_1 = 'score_2_ext' THEN 'Score crédit externe 2'
WHEN variable_dominante_1 = 'score_3_ext' THEN 'Score crédit externe 3'
WHEN variable_dominante_1 = 'niveau_scolaire' THEN 'Niveau scolaire'
WHEN variable_dominante_1 = 'score_1_ext' THEN 'Score crédit externe 1'
WHEN variable_dominante_1 = 'temps_emploi' THEN 'Ancienneté emploi'
WHEN variable_dominante_1 = 'valeur_bien' THEN 'Valeur du bien'
WHEN variable_dominante_1 = 'genre' THEN 'Genre'
WHEN variable_dominante_1 = 'nb_refus_credit_passes_int' THEN 'Nombre refus crédit passés'
WHEN variable_dominante_1 = 'ratio_dette_credit_ext' THEN 'Ratio dette crédit externe'
WHEN variable_dominante_1 = 'statut_familial' THEN 'Statut familial'
WHEN variable_dominante_1 = 'ratio_pret' THEN 'Ratio prêt'
WHEN variable_dominante_1 = 'montant_total_emprunte_passe_int' THEN 'Montant emprunté historique'
WHEN variable_dominante_1 = 'nb_credit_actifs_ext' THEN 'Nombre crédits actifs'
WHEN variable_dominante_1 = 'type_emprunt' THEN 'Type emprunt'
WHEN variable_dominante_1 = 'proprietaire_logement' THEN 'Propriétaire logement'
WHEN variable_dominante_1 = 'montant_total_retard_ext' THEN 'Montant total retard'
WHEN variable_dominante_1 = 'age' THEN 'Âge'
WHEN variable_dominante_1 = 'montant_total_pret_ext' THEN 'Montant total prêt externe'
WHEN variable_dominante_1 = 'nb_credit_clotures_ext' THEN 'Nombre crédits clôturés'
WHEN variable_dominante_1 = 'dette_totale_ext' THEN 'Dette totale'
WHEN variable_dominante_1 = 'montant_credit' THEN 'Montant crédit'
WHEN variable_dominante_1 = 'nb_types_credit_ext' THEN 'Nombre types crédit'
WHEN variable_dominante_1 = 'taux_endettement' THEN 'Taux endettement'
WHEN variable_dominante_1 = 'nb_demandes_credit_passees_int' THEN 'Nombre demandes crédit passées'
ELSE variable_dominante_1
END
AS variable_dominante_1_affichage,


CASE
WHEN variable_dominante_2 = 'score_2_ext' THEN 'Score crédit externe 2'
WHEN variable_dominante_2 = 'score_3_ext' THEN 'Score crédit externe 3'
WHEN variable_dominante_2 = 'niveau_scolaire' THEN 'Niveau scolaire'
WHEN variable_dominante_2 = 'score_1_ext' THEN 'Score crédit externe 1'
WHEN variable_dominante_2 = 'temps_emploi' THEN 'Ancienneté emploi'
WHEN variable_dominante_2 = 'valeur_bien' THEN 'Valeur du bien'
WHEN variable_dominante_2 = 'genre' THEN 'Genre'
WHEN variable_dominante_2 = 'nb_refus_credit_passes_int' THEN 'Nombre refus crédit passés'
WHEN variable_dominante_2 = 'ratio_dette_credit_ext' THEN 'Ratio dette crédit externe'
WHEN variable_dominante_2 = 'statut_familial' THEN 'Statut familial'
WHEN variable_dominante_2 = 'ratio_pret' THEN 'Ratio prêt'
WHEN variable_dominante_2 = 'montant_total_emprunte_passe_int' THEN 'Montant emprunté historique'
WHEN variable_dominante_2 = 'nb_credit_actifs_ext' THEN 'Nombre crédits actifs'
WHEN variable_dominante_2 = 'type_emprunt' THEN 'Type emprunt'
WHEN variable_dominante_2 = 'proprietaire_logement' THEN 'Propriétaire logement'
WHEN variable_dominante_2 = 'montant_total_retard_ext' THEN 'Montant total retard'
WHEN variable_dominante_2 = 'age' THEN 'Âge'
WHEN variable_dominante_2 = 'montant_total_pret_ext' THEN 'Montant total prêt externe'
WHEN variable_dominante_2 = 'nb_credit_clotures_ext' THEN 'Nombre crédits clôturés'
WHEN variable_dominante_2 = 'dette_totale_ext' THEN 'Dette totale'
WHEN variable_dominante_2 = 'montant_credit' THEN 'Montant crédit'
WHEN variable_dominante_2 = 'nb_types_credit_ext' THEN 'Nombre types crédit'
WHEN variable_dominante_2 = 'taux_endettement' THEN 'Taux endettement'
WHEN variable_dominante_2 = 'nb_demandes_credit_passees_int' THEN 'Nombre demandes crédit passées'
ELSE variable_dominante_2
END
AS variable_dominante_2_affichage,


CASE
WHEN variable_dominante_3 = 'score_2_ext' THEN 'Score crédit externe 2'
WHEN variable_dominante_3 = 'score_3_ext' THEN 'Score crédit externe 3'
WHEN variable_dominante_3 = 'niveau_scolaire' THEN 'Niveau scolaire'
WHEN variable_dominante_3 = 'score_1_ext' THEN 'Score crédit externe 1'
WHEN variable_dominante_3 = 'temps_emploi' THEN 'Ancienneté emploi'
WHEN variable_dominante_3 = 'valeur_bien' THEN 'Valeur du bien'
WHEN variable_dominante_3 = 'genre' THEN 'Genre'
WHEN variable_dominante_3 = 'nb_refus_credit_passes_int' THEN 'Nombre refus crédit passés'
WHEN variable_dominante_3 = 'ratio_dette_credit_ext' THEN 'Ratio dette crédit externe'
WHEN variable_dominante_3 = 'statut_familial' THEN 'Statut familial'
WHEN variable_dominante_3 = 'ratio_pret' THEN 'Ratio prêt'
WHEN variable_dominante_3 = 'montant_total_emprunte_passe_int' THEN 'Montant emprunté historique'
WHEN variable_dominante_3 = 'nb_credit_actifs_ext' THEN 'Nombre crédits actifs'
WHEN variable_dominante_3 = 'type_emprunt' THEN 'Type emprunt'
WHEN variable_dominante_3 = 'proprietaire_logement' THEN 'Propriétaire logement'
WHEN variable_dominante_3 = 'montant_total_retard_ext' THEN 'Montant total retard'
WHEN variable_dominante_3 = 'age' THEN 'Âge'
WHEN variable_dominante_3 = 'montant_total_pret_ext' THEN 'Montant total prêt externe'
WHEN variable_dominante_3 = 'nb_credit_clotures_ext' THEN 'Nombre crédits clôturés'
WHEN variable_dominante_3 = 'dette_totale_ext' THEN 'Dette totale'
WHEN variable_dominante_3 = 'montant_credit' THEN 'Montant crédit'
WHEN variable_dominante_3 = 'nb_types_credit_ext' THEN 'Nombre types crédit'
WHEN variable_dominante_3 = 'taux_endettement' THEN 'Taux endettement'
WHEN variable_dominante_3 = 'nb_demandes_credit_passees_int' THEN 'Nombre demandes crédit passées'
ELSE variable_dominante_3
END
AS variable_dominante_3_affichage
FROM `projet-riskhorizon-2276.3_Mart.tableau_final_HistGradientBoostingClassifier_v2`