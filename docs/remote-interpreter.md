# Remote PHP Interpreter

Interpreter means: which PHP runs the code.

For this project the expected interpreter is not host PHP. The expected interpreter is PHP inside the Compose service:

- service name: `app`;
- container project path: `/var/www/html`;
- container workdir: `/var/www/html`;
- image source: `docker/php/Dockerfile`;
- expected tools: `php`, `composer`, `vendor/bin/phpunit` or `vendor/bin/pest`.

PhpStorm sees files on the host, but PHP runs inside the container. Path mapping connects those two views:

- host path: repository root on the developer machine;
- container path: `/var/www/html`.

The Docker connection from the previous lesson only lets PhpStorm see Docker. The remote interpreter chooses the concrete PHP from the `app` service. Without this step, PhpStorm may still run Composer or tests through a random local PHP installation.
