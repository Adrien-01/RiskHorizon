CREATE TABLE  `projet-riskhorizon-2276.3_Mart.view_variables_pivot`
WITH source_data AS (
  SELECT 
    ref_client,
    variable_dominante_1, variable_dominante_2, variable_dominante_3,
    impact_coef_1, impact_coef_2, impact_coef_3,
    sens_impact_1, sens_impact_2, sens_impact_3
  FROM `projet-riskhorizon-2276.3_Mart.view_final_ML_KPI`
)

SELECT
  source_data.ref_client,
  CASE
    WHEN unpivoted.variable = 'score_2_ext' THEN 'Score crédit externe 2'
    WHEN unpivoted.variable = 'score_3_ext' THEN 'Score crédit externe 3'
    WHEN unpivoted.variable = 'niveau_scolaire' THEN 'Niveau scolaire'
    WHEN unpivoted.variable = 'score_1_ext' THEN 'Score crédit externe 1'
    WHEN unpivoted.variable = 'temps_emploi' THEN 'Ancienneté emploi'
    WHEN unpivoted.variable = 'valeur_bien' THEN 'Valeur du bien'
    WHEN unpivoted.variable = 'genre' THEN 'Genre'
    WHEN unpivoted.variable = 'nb_refus_credit_passes_int' THEN 'Nombre refus crédit passés'
    WHEN unpivoted.variable = 'ratio_dette_credit_ext' THEN 'Ratio dette crédit externe'
    WHEN unpivoted.variable = 'statut_familial' THEN 'Statut familial'
    WHEN unpivoted.variable = 'ratio_pret' THEN 'Ratio prêt'
    WHEN unpivoted.variable = 'montant_total_emprunte_passe_int' THEN 'Montant emprunté historique'
    WHEN unpivoted.variable = 'nb_credit_actifs_ext' THEN 'Nombre crédits actifs'
    WHEN unpivoted.variable = 'type_emprunt' THEN 'Type emprunt'
    WHEN unpivoted.variable = 'proprietaire_logement' THEN 'Propriétaire logement'
    WHEN unpivoted.variable = 'montant_total_retard_ext' THEN 'Montant total retard'
    WHEN unpivoted.variable = 'age' THEN 'Âge'
    WHEN unpivoted.variable = 'montant_total_pret_ext' THEN 'Montant total prêt externe'
    WHEN unpivoted.variable = 'nb_credit_clotures_ext' THEN 'Nombre crédits clôturés'
    WHEN unpivoted.variable = 'dette_totale_ext' THEN 'Dette totale'
    WHEN unpivoted.variable = 'montant_credit' THEN 'Montant crédit'
    WHEN unpivoted.variable = 'nb_types_credit_ext' THEN 'Nombre types crédit'
    WHEN unpivoted.variable = 'taux_endettement' THEN 'Taux endettement'
    WHEN unpivoted.variable = 'nb_demandes_credit_passees_int' THEN 'Nombre demandes crédit passées'
    ELSE unpivoted.variable
  END AS variable,
  unpivoted.ratio,
  unpivoted.sens_impact
FROM source_data,
UNNEST([
  STRUCT(variable_dominante_1 AS variable, impact_coef_1 AS ratio, sens_impact_1 AS sens_impact),
  STRUCT(variable_dominante_2 AS variable, impact_coef_2 AS ratio, sens_impact_2 AS sens_impact),
  STRUCT(variable_dominante_3 AS variable, impact_coef_3 AS ratio, sens_impact_3 AS sens_impact)
]) AS unpivoted
WHERE unpivoted.variable IS NOT NULL;