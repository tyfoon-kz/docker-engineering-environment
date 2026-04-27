# Restart Policy

All long-lived services use `restart: unless-stopped`.

Why:
- the stack is meant to behave like a durable local environment;
- a transient failure should not leave the student with a dead service until manual intervention.

Why this is not enough on its own:
- restart does not replace readiness;
- restart does not justify a broken dependency model;
- a service that crashes because startup is designed badly should be fixed architecturally, not merely restarted forever.
