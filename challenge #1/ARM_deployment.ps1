param (
    [string] $subscription_name,
    [string] $resourceGroupName,
    [string] $Template_path,
    [string] $TemplateParameter_path 
)

# Connect to your azure account 
Connect-AzAccount

Set-AzContext -Subscription $subscription_name

# Create new REsourcegroup for deployment if not already present
New-AzResourceGroup -Name $resourceGroupName -Location "West US"

# Deploy azure resource using ARM template
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile $Template_path -TemplateParameterFile $TemplateParameter_path 