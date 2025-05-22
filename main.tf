resource "azurerm_resource_group" "sre-challenge-flaschenpost" {
  name     = "{{ values.resource_group_name }}"
  location = "{{ values.resource_group_location }}"

  tags = {
    "{{ values.resource_group_tag_key }}" = "{{ values.resource_group_tag_value }}"
  }
}

resource "azurerm_storage_account" "srechallengeflaschenpost" {
  name                     = "{{ values.storage_account_name }}"
  resource_group_name      = "{{ values.storage_account_resource_group }}"
  location                 = azurerm_resource_group.sre-challenge-flaschenpost.location
  account_tier             = "{{ values.account_tier }}"
  account_replication_type = "{{ values.account_replication_type }}"
  access_tier              = "{{ values.access_tier }}"
  tags                     = azurerm_resource_group.sre-challenge-flaschenpost.tags
}

resource "azurerm_storage_container" "sre" {
  name                  = "{{ values.container_name }}"
  storage_account_id    = azurerm_storage_account.srechallengeflaschenpost.id
  container_access_type = "{{ values.container_type }}"
}