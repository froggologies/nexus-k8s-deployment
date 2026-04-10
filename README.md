# Nexus 3 on GKE with GCS Blobstore

## Prerequisites:

1. Create GCP Project
2. Enable Kubernetes Engine API

![Kubernetes Engine API](docs/SCR-20260410-oqrf.png "Kubernetes Engine API")


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

### Artifact Registry

![Artifact Registry](docs/SCR-20260410-peze.png "Artifact Registry")

## Push image to registry

```bash
gcloud auth configure-docker \
    asia-southeast2-docker.pkg.dev

export PROJECT_ID="<project-id>"

docker build -t asia-southeast2-docker.pkg.dev/$PROJECT_ID/$PROJECT_ID/my-nexus:latest .

docker push asia-southeast2-docker.pkg.dev/$PROJECT_ID/$PROJECT_ID/my-nexus:latest
```

![push image](docs/SCR-20260410-pjzi.png "push image")