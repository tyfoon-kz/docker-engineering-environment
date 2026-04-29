# Upgrade Notes

Use this file when local environment versions change.

## Current pinned versions

- `nginx:1.27-alpine`
- `postgres:16-alpine`
- `redis:7-alpine`
- `php:8.3-fpm-alpine`

## Upgrade entry template

```text
Date:
Changed:
From:
To:
Reason:
Commands to run:
Risk checks:
Docs updated:
```

## Policy

Avoid accidental `latest` tags. A version upgrade should be visible in code review and should update README, `.env.example`, the reproducibility checklist and this file when relevant.

