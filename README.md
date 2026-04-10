# Nexus 3 on GKE with GCS Blobstore

## Prerequisites:

1. Create GCP Project
2. Enable Kubernetes Engine API

![Enable Kubernetes Engine API on new GCP project](docs/SCR-20260410-oqrf.png "Enable Kubernetes Engine API on new GCP project")


## Terraform

```bash
cd terraform

terraform init

terraform apply -var='project_id=<project-id>'
```

### GCS Bucket

![GCS](docs/SCR-20260410-oqdo.png "GCS")

### GKE Cluster

![GKE Cluster](docs/SCR-20260410-ovgh.png "GKE Cluster")

### GKE Node Pool

![GKE Node Pool](docs/SCR-20260410-ovvw.png "GKE Node Pool")

## Push image to registry

```bash
export PROJECT_ID="<project-id>"

docker build -t gcr.io/$PROJECT_ID/my-nexus:latest .

docker push gcr.io/$PROJECT_ID/my-nexus:latest
```