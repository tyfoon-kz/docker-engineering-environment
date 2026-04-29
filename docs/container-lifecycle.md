# Container Lifecycle

A container has a lifecycle. It is not just "started once."

```text
pull image
  -> create container
  -> start foreground process
  -> observe with ps/logs
  -> stop
  -> remove
  -> recreate when needed
```

Useful commands:

```bash
docker pull nginx:alpine
docker run -d --name lesson02-nginx -p 8080:80 nginx:alpine
docker ps
docker logs lesson02-nginx --tail 20
docker stop lesson02-nginx
docker ps -a
docker rm lesson02-nginx
```

The key is reproducibility. If the container can be recreated from known inputs, the team does not depend on hidden manual changes.
