# RiskHorizon

**RiskHorizon** est une solution hybride de **Data Analysis** et **Data Science** qui analyse 307 497 demandes de crédit. En combinant modélisation prédictive, Business Intelligence et modules de stress tests réglementaires, l'outil offre une compréhension profonde du risque de défaut, surveille la solvabilité des fonds propres et fournit une aide à la décision stratégique pour les équipes risques et les conseillers en agence.

---

## Description du Projet

### Contexte et Objectifs
Dans le secteur du crédit, l'évaluation du risque repose traditionnellement sur des critères standardisés qui manquent parfois de finesse face à des volumes de données massifs. 

Le projet **RiskHorizon** a été développé pour démontrer notre capacité à industrialiser un pipeline de données performant, **à la croisée de la Data Analysis et de la Data Science**. En analysant un portefeuille conséquent de **307 497 demandes de crédit**, cette solution fait le pont entre la rigueur statistique de la modélisation et l'impact business de la Business Intelligence pour transformer des données brutes en leviers d'aide à la décision concrets et sécurisés.

### Impact Métier & Aide à la Décision
L'aboutissement de cette synergie technique est directement mis au service du terrain. L'ensemble des métriques d'agrégation (Data Analysis), des scores prédictifs (Data Science) et des simulations de crises (Stress Testing) alimentent un tableau de bord **Looker**. 

Cet outil fournit :
* **Aux équipes Risques & Direction :** Un suivi précis du ratio de solvabilité face aux scénarios macroéconomiques dégradés.
* **Aux conseillers en agence :** Une **cartographie socio-démographique poussée**, leur permettant de comprendre instantanément le profil de risque d'un demandeur pour prendre des décisions d'octroi de crédit plus rapides, plus justes et sécurisées.
---

## 📊 Restitution Visuelle & Aide à la Décision

Le tableau de bord interactif Looker Studio a été conçu pour restituer visuellement les analyses de risques aux décideurs et fournir une cartographie claire aux équipes en agence.

Il combine le suivi du ratio de solvabilité (Stress Test), les scores prédictifs (Data Science) et les graphiques de corrélation de l'endettement (Data Analysis).

🔗 [**Cliquez ici pour accéder au Dashboard Interactif RiskHorizon sur Looker Studio**](https://datastudio.google.com/s/qe0bhU5hUHM)

---

## Structure du Projet

```text
├── data/
│   ├── raw/                    # Données brutes
│   ├── processed/              # Données nettoyées
│   └── data_viz/               # Données finales pour la visualisation (à importer dans looker studio)
│
├── sql/
│   ├── 2_Intermediate          # Script sql enrichissement
│   └── 3_Mart                  # Script sql pour tables finales
│
├── src/
│   ├── python/
│   │   ├── cleaning            # Script de nettoyage et prétraitement des données
│   │   ├── modeling            # Script ML / Probabilité de défaut (Data Science)
│   │       ├── version_final
│   │       ├── version_test
│   │   └── metrics             # Agrégation des métriques de performance et scoring
│
├── visualization/              # Fichier pdf apercu looker studio              
│
└── README.md                   # Description et documentation du projet
