FROM ubuntu:22.04 AS build
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
WORKDIR /usr/src/app
COPY . .
RUN apt update && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs && \
    node -v && npm -v && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/*
RUN npm install && npm run build

FROM node:16-alpine
EXPOSE 5000
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/build .
RUN adduser -D appuser && \
    chown -R appuser /usr/src/app && \
    npm install -g serve && \
    npm cache clean --force
USER appuser
CMD ["serve", "-s", "-l", "5000", "build"]