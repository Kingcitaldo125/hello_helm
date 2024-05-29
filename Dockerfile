FROM node:18-bullseye

WORKDIR /app/

COPY express_app.js .

RUN npm install express | true

EXPOSE 8080

CMD [ "node", "express_app.js" ]
