# Build image from Dockerfile
docker build -t item-app:v1 .

# Show all images
docker image ls

# Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
docker tag item-app:v1 ghcr.io/NAMESPACE/item-app:v1

# Login to GitHub Container Registry
echo "<GITHUB_TOKEN>" | docker login ghcr.io -u "<USERNAME>" --password-stdin

# Push the image to the registry
docker push ghcr.io/NAMESPACE/item-app:v1
