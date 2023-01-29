```
brew install podman
podman machine init
sudo /opt/podman/bin/podman-mac-helper install
podman machine stop
podman machine start

This machine is currently configured in rootless mode. If your containers
require root permissions (e.g. ports < 1024), or if you run into compatibility
issues with non-podman clients, you can switch using the following command:

podman machine set --rootful
```

```
podman build --platform=linux/amd64 -t fastify-example .
```

```
podman run --platform=linux/amd64 --rm -dp 3000:3000 --name fastify-example fastify-example
```
