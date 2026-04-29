# Composer Through Container PHP

Composer reads platform requirements. That means it checks the PHP version and required extensions before installing packages.

If Composer runs through host PHP, it may see a different platform than the application:

- different PHP version;
- missing or extra extensions;
- different `php.ini`;
- different system libraries;
- different current working directory.

For this workflow, Composer should be configured in PhpStorm to use the remote interpreter from the `app` service.

Expected command model:

```bash
docker compose run --rm app composer install
docker compose run --rm app composer update
docker compose run --rm app composer validate
```

The exact command can be triggered by PhpStorm UI, but the runtime must remain the same: container PHP in `/var/www/html`.

If `vendor` differs between machines, first check which PHP ran Composer. A `vendor` directory created for host PHP is not proof that dependencies are valid for container PHP.
