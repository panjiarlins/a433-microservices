# Build image from Dockerfile
docker build -t karsajobs-ui:latest .
 
# Show all images
docker image ls
 
# Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
docker tag karsajobs-ui:latest ghcr.io/username/karsajobs-ui:latest
 
# Login to GitHub Container Registry
echo "GITHUB_TOKEN" | docker login ghcr.io -u "username" --password-stdin
 
# Push the image to the registry
docker push ghcr.io/username/karsajobs-ui:latest