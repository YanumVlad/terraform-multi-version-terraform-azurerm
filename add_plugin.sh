PLUGIN_PATH=/usr/share/terraform/plugins/registry.terraform.io/hashicorp/azurerm3/3.5.0/linux_amd64
mkdir -p $PLUGIN_PATH
curl -sLo_ 'https://releases.hashicorp.com/terraform-provider-azurerm/3.5.0/terraform-provider-azurerm_3.5.0_linux_amd64.zip'
unzip -p _ 'terraform-provider-azurerm*' > ${PLUGIN_PATH}/terraform-provider-azurerm3_v3.5.0
rm _
chmod 755 ${PLUGIN_PATH}/terraform-provider-azurerm3_v3.5.0