# [skaffold](https://github.com/GoogleContainerTools/skaffold) [docker image](https://docs.docker.com/) for [helm](https://github.com/helm/helm) deployment in [gcloud](https://cloud.google.com/sdk/gcloud/)

If you want to deploy your application with skaffold on a gcloud kubernetes cluster using helm and google cloud build, this image could be something for you. You can test it manually with your [skaffold](https://github.com/GoogleContainerTools/skaffold) project following these steps:

1. _build image_: `docker build -t skaffold .`
2. _configuration_: Create an `env-file` with environment variables for your gcloud kubernetes cluster. See [env-file-template](./env-file-template)
3. _run image_: run the image with the configuration and mount the source directory of your skaffold project `docker run -it -v /$(pwd):/skaffold-project --env-file=env-file skaffold bash`
4. _run skaffold_: run skaffold `cd /skaffold-project && skaffold run`

## Credits

Main parts of the [Dockerfile](./Dockerfile) comes from [devth/helm-docker](https://github.com/devth/helm-docker)
