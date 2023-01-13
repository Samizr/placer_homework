# Placer Homeowrk
## Setup
### Terraform

Fetch GCP credentials for Terraform:
`gcloud auth application-default login`

Working with terraform:
`terrform init`

`terraform plan`

`terraform apply`

### Helm 

Make sure you have Google Cloud GKE auth plugin:
`gcloud components install gke-gcloud-auth-plugin`

Get cluster credentials for kubectl
`gcloud container clusters get-credentials samizr-placer-cluster --region us-central1`

Install the Jenkins Bundle
`cd helm`

`helm dependency install .`

`helm install jenkins-bundle .`

Upgrading the Jenkins Bundle
`cd helm`

`helm dependency update`

`helm upgrade jenkins-bundle helm/`