# Build image from Dockerfile
docker build -t karsajobs:latest .
 
# Show all images
docker image ls
 
# Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
docker tag karsajobs:latest ghcr.io/username/karsajobs:latest
 
# Login to GitHub Container Registry
echo "GITHUB_TOKEN" | docker login ghcr.io -u "username" --password-stdin
 
# Push the image to the registry
docker push ghcr.io/username/karsajobs:latest