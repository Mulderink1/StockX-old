FROM alpine

RUN apk add --no-cache nodejs npm

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8080

ENTRYPOINT ["node"]

CMD ["App/app.js"]

