FROM node:alpine 
   
EXPOSE 3000

RUN npm install -g json-server

WORKDIR /data

COPY data/db.json db.json

CMD ["json-server", "-H", "0.0.0.0", "db.json"]