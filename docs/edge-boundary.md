# Edge Boundary

The stack publishes one web entry point: `Traefik`.

Why:
- the browser should see domains, not random ports;
- the external surface stays small and readable;
- new web routes become explicit routing decisions instead of another `ports:` stanza.

In this branch:
- `storefront` is published as `ecommerce.localho.st`;
- `api` remains internal for now;
- `admin` remains internal for now.
