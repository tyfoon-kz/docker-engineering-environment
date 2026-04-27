# Configuration Boundaries

## Runtime values

Values such as `APP_ENV`, `DB_HOST`, and `REDIS_HOST` belong to runtime configuration.

## Why secrets do not belong in the image

Secrets should not be baked into an image because:
- the image becomes less portable;
- sensitive values spread too easily;
- the boundary between environment description and private runtime data becomes weak.

## Role separation

The Dockerfile defines the environment structure.
Compose injects environment-specific runtime configuration.
