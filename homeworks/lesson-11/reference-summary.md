# Lesson 11 Reference Summary

This branch is the course answer key for UID/GID and permissions. Students implement the same ideas in their own `ecommerce-platform` repository.

Included artifacts:

- `user: "${APP_UID:-1000}:${APP_GID:-1000}"` for the `app` service
- `.env.example` with `APP_UID` and `APP_GID`
- `storage`, `storage/logs`, `storage/app/uploads`, `bootstrap/cache`
- `docs/uid-gid-permissions.md`
- `docs/writable-paths.md`
- `bin/check-writable-paths.sh`
