## Prérequis
- Visual Studio Code
- Extension Terraform
- Subscription Azure avec droits Contributor au minimum.
- Terraform: 
  - Téléchargement: https://www.terraform.io/downloads.html 
  - Ajouter le chemin du fichier exe aux variables d'environnement (PATH)

### Se connecter à Azure
Utiliser Azure CLI ou Azure PowerShell, depuis votre poste.

#### Azure CLI (Bash)
- Se connecter à Azure: `az login` (à faire depuis votre poste, pas depuis le Cloud Shell)
- Lister les subscriptions disponibles: `az account list`
- Sélectionner la subscription souhaitée à l'aide de son id: 
    ```
    az account set –s <subscription id>
    ```

#### Azure PowerShell
- Se connecter à Azure: `Login-AzAccount` (à faire depuis votre poste, pas depuis le Cloud Shell)
- Lister les subscriptions disponibles: `Get-AzSubscription`
- Sélectionner la subscription souhaitée à l'aide de son id: 
    ```powershell
    $sub=Select-AzSubscription <subscription id>
    ```
