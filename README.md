# skaffold image for gcloud

For the usage in a CI/CD System.

## build image

docker build -t skaffold .

## run image

Create an `env-file` with your gcloud settings.

docker run -ti --env-file=env-file skaffold bash
