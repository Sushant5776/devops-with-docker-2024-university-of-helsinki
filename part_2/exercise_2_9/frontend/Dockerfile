FROM ubuntu:22.04
EXPOSE 5000
ENV REACT_APP_BACKEND_URL=http://localhost/api/
RUN apt update && \
    apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs && \
    node -v && npm -v
RUN npm install -g serve
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build
CMD ["serve", "-s", "-l", "5000", "build"]