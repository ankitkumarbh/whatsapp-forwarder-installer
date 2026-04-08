FROM node:25

WORKDIR /app

COPY package.json ./

RUN npm install supervisor -g

RUN yarn install --no-audit

COPY . .

EXPOSE 3000

CMD ["sh", "start.sh"]