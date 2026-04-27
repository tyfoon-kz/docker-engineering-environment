# Read-Only Boundaries

`./docker/app/php.ini` is mounted as read-only because the container only needs to consume that config.

That is an example of a useful rule:
- write access should exist only where it is truly needed;
- static config should not become mutable container state by accident.
