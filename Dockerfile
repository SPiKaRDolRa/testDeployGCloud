FROM node:14

WORKDIR /usr/src/app

COPY . ./
RUN npm install

EXPOSE 8888

ENV HOST=0.0.0.0
ENV PORT=8888

RUN npm run build

CMD [ "npm", "run", "start" ]