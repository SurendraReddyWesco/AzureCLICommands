![](https://komarev.com/ghpvc/?username=SurendraReddyWesco&color=green&label=Repo+Visitors)

# GitHub Cli Commands Link
https://cli.github.com/manual/gh

# Azure CLI Support
- Manage Azure subscription
- Create Management groups
- Lock subscriptions

# Tenants, Users & Subscription
- Tenant - Azure AD for organization, one or more subscription and user.
- User - Individual associated to one tenant, create, manage and use resources.

# Commands List

- Subscriptions list

    `az account show` or `az account list` or 
    `az account show --output table` or `az account list --output table` or `az account list --query "[?isDefault]"`

- Switch the subscription

    `az account set --subscription "Name"`

- Azure Management Group

    `az account management-group list`
  
- Resources list

    `az resource list` - Azure CLI
    `Get-AzureRmResource` - Powershell

# Reference MicroSoft Docs
https://docs.microsoft.com/en-us/cli/azure/manage-azure-subscriptions-azure-cli
https://docs.microsoft.com/en-us/powershell/azure/?view=azps-7.1.0

# CLIvs Powershell
![image](https://user-images.githubusercontent.com/98414596/151584471-2edffb80-4314-4840-a42d-e146bd4f9688.png)

