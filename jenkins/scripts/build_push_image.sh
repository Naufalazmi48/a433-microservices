# Build docker image
docker build -t item-app:v1 .

# Show images
docker images

# Modify tag name of image
docker tag item-app:v1 ghcr.io/naufalazmi48/item-app:v1

# Login to docker github container registry
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u Naufalazmi48 --password-stdin

# Push to github packages
docker push ghcr.io/naufalazmi48/item-app:v1