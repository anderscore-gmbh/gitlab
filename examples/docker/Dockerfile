FROM bash:latest
WORKDIR /app
ENV MSG="Hello World"
COPY /app .
RUN ["bash","setup.sh"]
CMD ["bash","script.sh"]
EXPOSE 1234
