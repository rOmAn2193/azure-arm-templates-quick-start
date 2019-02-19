$MsDeployPackageURL=""
$ResourceGroupName = "TestGroup"
$WebAppName = "aspnetcore"
$ResourceGroupLocation = "West US"
$TemplateFile = "azuredeploy.json"
$TemplateParametersFilePath  = "azuredeploy.parameters.json"


Login-AzureRmAccount
New-AzireRmReseourceGroup -Name $ResourceGroupName -Location $ResourceGroupLocation

New-AzireRmReseourceGroupDeployment -Name $WebAppName -ResourceGroupName $ResourceGroupName
-TemplateFile $TemplateFile -TemplateParameterFile $TemplateParametersFilePath 
-Verbose