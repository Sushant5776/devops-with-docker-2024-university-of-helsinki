FROM node:16.2-alpine
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN apk update && \
    apk upgrade && \
    node -v && npm -v && \
    npm install -g serve
WORKDIR /usr/src/app
COPY . .
RUN addgroup appgroup && \
    adduser -S -G appgroup appuser && \
    chown -R appuser:appgroup /usr/src/app
USER appuser
RUN npm install && \
    npm run build && \
    npm cache clean --force
CMD ["serve", "-s", "-l", "5000", "build"]