# localho.st Notes

The course uses `*.localho.st` as the default local zone because subdomains resolve to `127.0.0.1` without maintaining a long list of manual host entries.

This keeps the beginner workflow focused on reverse-proxy concepts:
- one edge;
- one domain model;
- less friction from local DNS setup.

If a team prefers its own local zone such as `*.local`, that is possible too, but it requires a separate DNS or hosts strategy.
