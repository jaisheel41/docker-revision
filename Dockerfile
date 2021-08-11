FROM node:alpine3.14
RUN addgroup app && adduser -S -G app
USER app 
WORKDIR /app
COPY package*.json .
RUN ["npm","install"]
COPY . .
ENV username=app
EXPOSE 3000
CMD ["npm","start"]