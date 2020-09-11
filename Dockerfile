FROM maven:3.6-jdk-11 as resource
RUN apt-get --yes update && \
    apt-get --yes install awscli jq
FROM resource

ENTRYPOINT [ "aws" ]
CMD [ "--version" ]
