FROM node:14

LABEL owner="Lukas Novotny <lucass.novotny@gmail.com>" \
      description="Runs serverless commands"

WORKDIR /app

COPY . .

RUN npm install

ENTRYPOINT [ "/app/entrypoint.sh" ]
