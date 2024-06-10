echo "Deploying $CONTAINER_RELEASE_IMAGE to test environment."
docker build -t hello-world-dataport .
docker run -it -p 9090:9090 hello-world-dataport
curl localhost:9090