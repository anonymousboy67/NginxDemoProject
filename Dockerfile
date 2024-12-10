FROM node:20.12.2

WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install

EXPOSE 3000
CMD ["node", "server.js"]
