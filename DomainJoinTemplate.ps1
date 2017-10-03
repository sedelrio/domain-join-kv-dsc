


# Using Azure Key Vault and DSC
$template = "https://raw.githubusercontent.com/sedelrio/domain-join-kv-dsc/master/domainjoin-kv-dsc-parameters.json"
$parameters = "https://raw.githubusercontent.com/sedelrio/domain-join-kv-dsc/master/domainjoin-kv-dsc-parameters.json"
New-AzureRmResourceGroupDeployment -Name DomainJoin  -ResourceGroupName "testdomainjoin" -TemplateFile $template -TemplateParameterFile $parameters


#CLI
az group deployment create --resource-group examplegroup --template-file "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join\VM - Domain Join.KV.DSC.json" --parameters "C:\Users\sebastid\Documents\Documentation\Templates\Domain Join\domainjoinparamsKeyVault.DSC.json" 



Publish-AzureVMDscConfiguration .\iisinstall.ps1 -ConfigurationArchivePath .\iisinstall.zip -Force
Publish-AzureVMDscConfiguration .\IISInstall.ps1 -ConfigurationArchivePath .\iisinstalllast.zip -Force