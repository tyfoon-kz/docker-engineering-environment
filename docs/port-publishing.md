# Port Publishing

`ports` publishes a container port on the host.

```yaml
ports:
  - "${WEB_PUBLISHED_PORT:-8080}:80"
```

With `WEB_PUBLISHED_PORT=8080`, the host opens `http://localhost:8080`.

`expose` documents an internal port, but it does not publish it on the host. `mysql` exposes `3306` only for internal Compose traffic. It is not available as `localhost:3306` in this reference.

If `8080` is already busy, change `WEB_PUBLISHED_PORT` to another host port such as `8081`. The internal Nginx port remains `80`.
