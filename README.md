# text-Deploy-GCloud

## Build Setup

```bash
# install dependencies
$ npm install

# serve with hot reload at localhost:3000
$ npm run dev

# build for production and launch server
$ npm run build
$ npm run start

# generate static project
$ npm run generate
```

## Docker Setup for npm

```bash
FROM node:14

WORKDIR /usr/src/app

COPY . ./
RUN npm install

EXPOSE 8888

ENV HOST=0.0.0.0
ENV PORT=8888

RUN npm run build

CMD [ "npm", "run", "start" ]
```

## cloudbuild Setup

```bash
_SERVICE_NAME: aumlnwza007-api
```
