echo "Deploying $CONTAINER_RELEASE_IMAGE to test environment..."
docker pull $CONTAINER_RELEASE_IMAGE
docker run -it -p 9090:9090 $CONTAINER_RELEASE_IMAGE
echo "Deployed $CONTAINER_RELEASE_IMAGE to test environment."