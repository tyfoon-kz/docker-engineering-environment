# Labels Explained

Key labels used in this branch:

- `traefik.enable=true`
  Marks the container as intentionally publishable.

- `traefik.http.routers.<name>.rule=Host(...)`
  Maps a hostname to a router.

- `traefik.http.routers.<name>.entrypoints=web`
  Tells Traefik to accept the request on the HTTP entrypoint.

- `traefik.http.services.<name>.loadbalancer.server.port=80`
  Tells Traefik which internal container port should receive the request.

- `traefik.docker.network=...`
  Prevents ambiguity when Traefik must reach the service through a specific Docker network.

Common mistakes:

- missing `traefik.enable=true` while `exposedByDefault=false` is active;
- putting a host published port such as `8000` into `loadbalancer.server.port`;
- writing a `Host(...)` value that does not match the browser URL;
- attaching the service to a different network from Traefik;
- treating `api@internal` dashboard access as safe for production by default.
