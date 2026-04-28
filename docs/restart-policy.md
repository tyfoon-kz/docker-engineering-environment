# Restart Policy

`restart: unless-stopped` appears on both services as a resilience policy for long-lived containers.

What it does:
- it helps the stack recover from temporary runtime exits.

What it does not do:
- it does not fix a wrong configuration;
- it does not replace healthchecks;
- it does not prove readiness by itself.
