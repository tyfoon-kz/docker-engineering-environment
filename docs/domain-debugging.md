# Domain Debugging

If a domain does not open, check the layers in this order:

1. Domain resolution
   Make sure the hostname resolves to the local machine.
2. Traefik reachability
   Check whether the Traefik ports are actually bound.
3. Router rule
   Verify the `Host(...)` rule matches the real hostname.
4. Target service
   Confirm the router points to the expected service and container port.
5. TLS
   Only after the route is correct should you debug the certificate and HTTPS behavior.

Useful commands:
- `docker compose logs traefik`
- `docker compose config`
- `curl -I http://...`
- `curl -kI https://...`
