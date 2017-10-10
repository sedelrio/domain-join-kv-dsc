


# Using Azure Key Vault and DSC
$template = "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join Azure Key Vault DSC\domainjoin-kv-dsc.json"
$parameters = "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join Azure Key Vault DSC\domainjoin-kv-dsc-parameters.json"
New-AzureRmResourceGroupDeployment -Name DomainJoin  -ResourceGroupName "testdj" -TemplateFile $template -TemplateParameterFile $parameters


#CLI
az group deployment create --resource-group examplegroup --template-file "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join\VM - Domain Join.KV.DSC.json" --parameters "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join\domainjoinparamsKeyVault.DSC.json" 



Publish-AzureVMDscConfiguration .\iisinstall.ps1 -ConfigurationArchivePath .\iisinstall.zip -Force
Publish-AzureVMDscConfiguration .\IISInstall.ps1 -ConfigurationArchivePath .\iisinstalllast.zip -Force