# Build image from Dockerfile
docker build -t ghcr.io/username/shipping-service:latest .
 
# Show all images
docker image ls
 
# Login to GitHub Container Registry
echo "GITHUB_TOKEN" | docker login ghcr.io -u "username" --password-stdin
 
# Push the image to the registry
docker push ghcr.io/username/shipping-service:latest