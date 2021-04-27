FROM node:current-alpine

COPY . /app

WORKDIR /app

EXPOSE 3000

# to use local npm modules instead of installing globally
ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

ENTRYPOINT [ "npm" ]