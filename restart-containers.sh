VM_NAME=$1
gcloud compute instances delete-metadata ${VM_NAME}
gcloud compute instances add-metadata ${VM_NAME} \
  --metadata-from-file google-container-manifest=$2/manifest.yaml

gcloud compute instances reset ${VM_NAME}
