FROM node:20-alpine
EXPOSE 3000
WORKDIR /usr/src/datasight
COPY . .
RUN npm install && npm run build
CMD ["npm", "start"]