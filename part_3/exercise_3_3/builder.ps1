param(
  [Parameter(Mandatory=$true)]
  [string] $gitHubRepo,
  [Parameter(Mandatory=$true)]
  [string] $dockerHubRepo
)

# Clone the repository
git clone https://github.com/$gitHubRepo code

# Move to project directory (assuming no subdirectories)
cd code

# Build the Docker image (assuming Dockerfile is in root)
docker build -t $dockerHubRepo .

# Login to Docker Hub (replace with your credentials)
docker login -u <docker hub username> -p <docker hub password>

# Push the image
docker push $dockerHubRepo

# Cleanup (optional)
cd ..
rm -Force -Recurse code