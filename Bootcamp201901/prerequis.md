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
Utiliser Azure CLI ou Azure PowerShell, via le Cloud Shell ou depuis votre poste si il est configuré.

#### Azure CLI (Bash)
- Se connecter à Azure: `az login` (à faire depuis votre poste, pas depuis le Cloud Shell)
- Lister les subscriptions disponibles: `az account list`
- Sélectionner la subscription souhaitée à l'aide de son id: 
    ```
    az account set –s <subscription id>
    ```
- Créer le Service Principal avec le rôle **Contributor** sur la subscription:
    ```
    az ad sp create-for-rbac --role="Contributor" --name "bootcamp201901<name>" --scopes="/subscriptions/<subscription id>"
    ```
  - Récupérer l'output de la commande
- Tester le Service Principal
  - Connection avec le compte: 
    ```
    az login --service-principal -u <nam> -p <password> --tenant <tenant>
    ```
  - Lister les resource groups Azure: `az group list`

#### Azure PowerShell
- Se connecter à Azure: `Login-AzureRmAccount` (à faire depuis votre poste, pas depuis le Cloud Shell)
- Lister les subscriptions disponibles: `Get-AzureRmSubscription`
- Sélectionner la subscription souhaitée à l'aide de son id: 
    ```powershell
    $sub=Select-AzureRmSubscription <subscription id>
    ```
- Définir un nom de Service Principal: 
    ```powershell
    $name="bootcamp201901<name>"
    ```
- Définir un mot de passe pour le Service Principal: 
    ```powershell
    $password="monmotdepasse"
    ```
  - Exécuter la commande: 
    ```powershell
    $securePassword = ConvertTo-SecureString $password -AsPlainText -Force
    ```
- Définir une application dans Azure AD: 
    ```powershell
    $azureAdApplication = New-AzureRmADApplication -DisplayName $name -IdentifierUris "http://$name" -Password $securePassword -Verbose
    ```
- Créer un Service Principal associé à l'application: 
    ```powershell
    $spn = New-AzureRmADServicePrincipal -ApplicationId $($azureAdApplication.ApplicationId)
    ```
- Attribuer le rôle **Contributor** au Service Principal sur la subscription: 
   ```powershell
   New-AzureRmRoleAssignment -RoleDefinitionName "Contributor" -ServicePrincipalName $($azureAdApplication.ApplicationId) -Scope "/subscriptions/<subscription id>"
   ```
- Récupérer les informations de connexions:
    ```powershell
    Write-Output "appId: $($azureAdApplication.ApplicationId)"
    Write-Output "displayName: $name"
    Write-Output "name: http://$name"
    Write-Output "password: $password"
    Write-Output "tenant: $($sub.Tenant.Id)"
    ```
- Tester le Service Principal
  - Connection avec le compte:
    ```powershell
    $cred = New-Object System.Management.Automation.PSCredential ("http://$name", $securePassword)
    Login-AzureRmAccount -Credential $cred -ServicePrincipal -TenantId $($sub.Tenant.Id)
    ```
  - Lister les resource groups Azure: `Get-AzureRmResourceGroup`