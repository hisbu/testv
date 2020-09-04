FROM node:6-alpine
# set work dir
WORKDIR /usr/src/app
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 2001
CMD [ "node", "index.js" ]