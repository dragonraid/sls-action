FROM node:14-alpine3.11

LABEL owner="Lukas Novotny <lucass.novotny@gmail.com>" \
      description="Runs serverless commands"

# TODO: Check for support to pass github docker action build argument
ARG version=2.4.0

RUN npm install -s -g serverless@${version}

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
