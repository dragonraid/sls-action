FROM node:14-alpine3.11

RUN npm install -s -g serverless@2.1.0

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
