# Build docker image
docker build -t ghcr.io/naufalazmi48/shipping-service:latest .

# Show images
docker images

# Login to docker github container registry
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u Naufalazmi48 --password-stdin

# Push to github packages
docker push ghcr.io/naufalazmi48/shipping-service:latest