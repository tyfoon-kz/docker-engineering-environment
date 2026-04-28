# Local TLS

The stack now redirects HTTP to HTTPS and serves the local domains through the `websecure` entrypoint.

Why this matters:
- browser behavior around cookies and callbacks is closer to real life;
- the local environment stops being "HTTP only by accident";
- the edge model becomes closer to a production-style entry flow.

Use the following checks:
- `curl -I http://ecommerce.localho.st`
- `curl -kI https://ecommerce.localho.st`
