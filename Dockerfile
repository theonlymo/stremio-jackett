FROM node:latest

WORKDIR /app

ENV NODE_ENV production

COPY package*.json ./

RUN npm install tsx -g

RUN npm run build

COPY . .

COPY .env.example .env

EXPOSE 3000

CMD ["npm", "start"]
