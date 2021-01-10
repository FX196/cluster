echo "Creating resource group..."
az group create --name cloudburst_rg --location eastus

echo "Creating cluster object..."
# create managed cluster with general instance group
az aks create --resource-group cloudburst_rg \
  --name cloudburst_cluster \
  --node-vm-size Standard_D4ds_v4 \
  --nodepool-name general_nodepool \
  --ssh-key-value ${SSH_KEY} \
  --network-plugin kubenet
