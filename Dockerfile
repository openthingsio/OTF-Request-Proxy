FROM node:10

EXPOSE 3000
EXPOSE 8080

ENTRYPOINT npm run start
WORKDIR /app

COPY /tsconfig.json ./
COPY /package.json ./
COPY /package-lock.json ./
RUN npm install

COPY /src ./src
RUN ls -a
RUN npm run compile
