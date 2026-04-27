# Permissions Model

The application container runs with:
- `user: "${APP_UID}:${APP_GID}"`

That makes the container write to bind-mounted files using the same numeric identity as the host developer.

The goal is not "special Docker permissions". The goal is avoiding ownership mismatch on host files created from inside the container.
