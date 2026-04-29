# Tests Through Container PHP

Tests must check the application in the same runtime where the application runs.

For this workflow, PhpStorm test runners should use the remote interpreter from the `app` service. PHPUnit or Pest should run from `/var/www/html`, not from an accidental host directory.

Expected command model:

```bash
docker compose run --rm app php -v
docker compose run --rm app ./vendor/bin/phpunit
docker compose run --rm app ./vendor/bin/pest
```

Common failures:

- wrong container: PhpStorm uses `nginx` or another service instead of `app`;
- wrong workdir: tests start outside `/var/www/html`;
- missing `vendor`: Composer was not run inside the container runtime;
- path mismatch: PhpStorm cannot match host files to container files;
- extension mismatch: tests need an extension that exists on host PHP but not in the container.

When test output differs between terminal and IDE, compare service name, PHP version, workdir, path mappings and `vendor` origin before changing application code.
