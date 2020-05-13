FROM node:14-alpine3.11

LABEL owner="Lukas Novotny <lucass.novotny@gmail.com>"
LABEL description="Runs serverless commands"

RUN npm install -s -g serverless@1.70.0

ENTRYPOINT [ "sls" ]
