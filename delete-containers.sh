VM_NAME=$1

gcloud compute instances delete ${VM_NAME}

gcloud compute firewall-rules delete ${VM_NAME}-rule-80
