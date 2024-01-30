FROM node:19-alpine

COPY package.json /app/
COPY app /app/

WORKDIR /app

RUN npm install 

CMD ["node", "server.js"]

# FROM node:lts-alpine

# ENV NODE_ENV=production MONGO_DB_USERNAME=admin MONGO_DB_Password=password

# WORKDIR /usr/src/app

# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "app", "./"]

# RUN npm install --production --silent && mv node_modules ../

# EXPOSE 3000

# RUN chown -R node /usr/src/app

# USER node

# CMD ["node", "server.js"]
