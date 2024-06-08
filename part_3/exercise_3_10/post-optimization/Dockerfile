FROM node:20-alpine AS build
WORKDIR /usr/src/datasight
COPY . .
RUN npm install && npm run build

FROM node:20-alpine
EXPOSE 3000
WORKDIR /usr/src/datasight
COPY --from=build /usr/src/datasight/.next ./.next
RUN addgroup nodejs && \
    adduser -S -G nodejs nextjs && \
    chown -R nextjs:nodejs /usr/src/datasight && \
    npm install -g next@14.2.3 && \
    npm cache clean --force
CMD ["next", "start"]