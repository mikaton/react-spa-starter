FROM node:current-alpine

WORKDIR /app

# to use local npm modules instead of installing globally
ENV PATH /app/node_modules/.bin:$PATH

COPY . /app

RUN npm install

ENTRYPOINT [ "npm" ]