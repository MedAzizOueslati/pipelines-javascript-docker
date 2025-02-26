# syntax=docker/dockerfile:1


FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app

COPY ["/app/package.json", "/app/package-lock.json*", "/app/server.js" , "./"]

RUN npm install --production

COPY . .

EXPOSE 8080
CMD [ "node", "/app/server.js" ]
