# Datasight - Data Analytics for Businesses

## Tech Stack

- Next.js
- React.js
- Tailwind CSS
- Ant Design

## Usage

### Run using Docker Hub Image

Make sure you have `docker` installed.

```bash
# Pull Image using following command
docker pull garudkar/datasight

# Run container based on the pulled image using following command
docker run -p 3000:3000 garudkar/datasight
```

### Run as a Docker Container from Github Repository

Make sure you have `docker` installed.

Clone repository from github using following command:

```bash
# Clone Repository
git clone https://github.com/Sushant5776/datasight.git

# Switch to the project directory
cd datasight

# To build the image use following command
docker build -t datasight .

# After building image run using following command
docker run -p 3000:3000 datasight
```

### Run on Local Machine

Make sure you have `node.js` and `npm` installed.

Switch to the root directory of the project in your terminal and run:

```bash
npm run dev
```