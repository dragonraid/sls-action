FROM node:14-alpine3.11

LABEL owner="Lukas Novotny <lucass.novotny@gmail.com>" \
      description="Runs serverless commands"

RUN npm install -s -g serverless@1.70.0

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
