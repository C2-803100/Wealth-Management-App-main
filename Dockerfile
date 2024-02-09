FROM node:8.11-slim
WORKDIR /app
COPY package*.json /app
COPY package-lock*.json /app

RUN npm install

COPY . .
EXPOSE 6600
CMD ["npm","start"]

