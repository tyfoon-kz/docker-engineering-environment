# Local TLS

The stack now redirects HTTP to HTTPS and serves the local domains through the `websecure` entrypoint.

Why this matters:
- browser behavior around cookies and callbacks is closer to real life;
- the local environment stops being "HTTP only by accident";
- the edge model becomes closer to a production-style entry flow.
- `Secure` cookies, OAuth callbacks, mixed content checks, and secure browser APIs can be tested earlier.

Use the following checks:
- `curl -I http://ecommerce.localho.st`
- `curl -kI https://ecommerce.localho.st`
- `curl -vk https://admin.ecommerce.localho.st`

The `web` entrypoint listens on port `80`. The `websecure` entrypoint listens on port `443`. HTTP redirects to HTTPS, and each routed application uses `websecure` with `tls=true`.
