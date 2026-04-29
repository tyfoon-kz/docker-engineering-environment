# Healthcheck Rationale

Healthchecks are lightweight pulse checks. They verify that MySQL, Redis, the PHP dev server, and Nginx respond. They do not run migrations, seeders, cleanup, or permission changes.
