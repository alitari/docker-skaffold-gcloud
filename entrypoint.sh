#!/bin/bash
gcloud config configurations create $GCLOUD_PROJECT
gcloud config set core/project $GCLOUD_PROJECT
echo -n $GCLOUD_PROJECT_KEY > key.json
gcloud auth activate-service-account $GCLOUD_SERVICEACCOUNT --key-file=key.json
export GOOGLE_APPLICATION_CREDENTIALS=/key.json
gcloud container clusters get-credentials $GCLOUD_CLUSTER --zone $GCLOUD_CLUSTER_ZONE
docker-credential-gcr configure-docker

exec "$@"
