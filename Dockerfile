FROM node:9.11.1-slim
WORKDIR /app
COPY ./package.json /app/package.json
RUN npm install
COPY ./src /app/src
ENTRYPOINT ["node", "src/index.js"]
