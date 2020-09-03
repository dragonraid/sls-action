FROM node:14-alpine3.11

RUN npm install -s -g serverless@1.81.1

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
