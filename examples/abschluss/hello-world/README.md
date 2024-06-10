# Hello World Dockerfile

Docker Image bauen:

```sh
docker build -t hello-world-dataport .
```

Container starten:

```sh
docker run -it -p 9090:9090 hello-world-dataport
```

Anwendung testen:

```sh
curl localhost:9090
```

...oder im Browser öffnen.
