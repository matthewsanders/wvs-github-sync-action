# Container image
FROM alpine:3.10

# Copies code file from action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY auth.sh /auth.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
