FROM node:lts-alpine3.14
RUN addgroup app && adduser -S -G app app
USER app  

WORKDIR /usr/local/test/react-app

COPY . .
RUN npm install 
ENV API_URL = http://api.myapp.com/
EXPOSE 3000
