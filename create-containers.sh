VM_NAME=$1

gcloud compute instances create ${VM_NAME} \
  --image-family=container-vm \
  --image-project=google-containers \
  --metadata-from-file google-container-manifest=$2/manifest.yaml \
  --tags cookbook-gce \
  --machine-type f1-micro

gcloud compute firewall-rules create ${VM_NAME}-rule-80 \
    --allow tcp:80 \
    --target-tags cookbook-gce

