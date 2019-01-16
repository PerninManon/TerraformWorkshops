# Workshop Terraform
- **[Prérequis](#prerequis)**
- **[Partie 1: Déployer un projet existant](#)**
- **[Partie 2: Construire son projet](#)**

## Prérequis
- Visual Studio Code
- Extension Terraform
- Subscription Azure avec droits d'admin (Owner). Exemple: subscription MSDN personnelle
  - Service Principal pour cette subscription
- Terraform: 
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/terraform-install-configure 
  - Téléchargement: https://www.terraform.io/downloads.html 
  - Ajouter le chemin du fichier exe aux variables d'environnement (PATH)

### Création du Service Principal


## Partie 1: Déployer un projet existant

### Objectifs
- Configurer un projet Terraform pour déployer dans Azure
- Manipuler les commandes Terraform
- Se familiariser avec la structure et la syntaxe d'un projet Terraform

### Scénario
Déploiement d'un Key Vault auquel votre Service Principal a accès.
// Schéma

### Etapes

#### Accès à Azure
// Vérifier accès à Azure: service principal etc... ?

#### Déploiement
1. Initialiser le projet Terraform à l'aide de la commande `terraform init`
2. Vérifier le plan d'exécution à l'aide de la commande `terraform plan`
3. Déployer le projet à l'aide de la commande `terraform apply`
4. Tester avec la commande `terraform apply` avec le paramètre `-auto-approve` 
5. Récupérer les outputs

## Partie 2: Construire un projet Terraform

### Objectifs
- Mettre en place un projet Terraform à partir d'une architecture
- Réfléchir aux contraintes et dépendances

### Aide
- Site Terraform (github)

### Scénarios 
Deux scénarios sont proposés: 
- 1 orienté IaaS
- 1 orienté PaaS 

Des étapes bonus sont proposées pour les 2 scénarios

#### Scénario IaaS
// Schéma
1. Lister les ressources à définir
2. Mettre en place le projet Terraform et déployer !

##### Bonus
Eléments supplémentaires à prendre en compte (peu importe l'ordre)

#### Scénario PaaS
// Schéma

1. Lister les ressources à définir
2. Mettre en place le projet Terraform et déployer !

##### Bonus
Eléments supplémentaires à prendre en compte (peu importe l'ordre)
- Configurer la connection string de la base Azure au niveau de la Web App 
- Configurer le hostname de la Web App au niveau de la Function
- Configurer les informations relatives au service bus et à la queue au niveau de la Function
- Connecter vos ressources à Log analytics
  - **Aides**
    - Déployer un workspace Log Analytics
    - Provider Terraform à utiliser: `azurerm_monitor_diagnostic_setting` 

#### Bonus
