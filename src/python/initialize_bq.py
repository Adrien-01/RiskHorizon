import os
from google.cloud import bigquery
from google.cloud.exceptions import NotFound

def initialize_riskhorizon_structure():
    # 1. Configuration de l'environnement
    PROJECT_ID = "projet-riskhorizon-2276"
    LOCATION = "EU"  # Ou "US" selon vos préférences
    DATASETS = ["1_Source", "2_Intermediate", "3_Mart"]
    
    print(f"🚀 Initialisation de la structure BigQuery pour le projet : {PROJECT_ID}")
    
    # Initialisation du client BigQuery
    # Remarque : Assurez-vous d'avoir configuré vos identifiants (gcloud auth application-default login)
    client = bigquery.Client(project=PROJECT_ID)
    
    # 2. Création des Datasets
    for dataset_name in DATASETS:
        dataset_id = f"{PROJECT_ID}.{dataset_name}"
        
        # Définition des propriétés du dataset
        dataset_ref = bigquery.Dataset(dataset_id)
        dataset_ref.location = LOCATION
        dataset_ref.description = f"Couche {dataset_name} pour l'application RiskHorizon."
        
        try:
            # Vérifier si le dataset existe déjà
            client.get_dataset(dataset_id)
            print(f"🔹 Le dataset '{dataset_name}' existe déjà. Passé.")
        except NotFound:
            # Création s'il n'existe pas
            created_dataset = client.create_dataset(dataset_ref, timeout=30)
            print(f"✅ Dataset '{created_dataset.dataset_id}' créé avec succès (Zone: {LOCATION}).")
            
    print("\n🎉 Architecture RiskHorizon initialisée avec succès ! Prêt pour le chargement des CSV.")

if __name__ == "__main__":
    # Optionnel : Si vous utilisez une clé SA locale, décommentez la ligne suivante :
    # os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "chemin/vers/votre/cle.json"
    
    initialize_riskhorizon_structure()