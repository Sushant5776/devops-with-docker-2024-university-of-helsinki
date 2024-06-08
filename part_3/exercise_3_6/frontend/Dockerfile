FROM ubuntu:22.04
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost:8080
RUN apt update && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs && \
    node -v && npm -v && \
    npm install -g serve && \
    useradd -m appuser && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /usr/src/app
COPY . .
RUN chown -R appuser:appuser /usr/src/app
USER appuser
RUN npm install && \
    npm run build
CMD ["serve", "-s", "-l", "5000", "build"]