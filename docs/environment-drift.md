# Environment Drift

Environment drift means the IDE sees one environment while the application runs in another.

Examples:

- PhpStorm analyzes code with host PHP 8.4, but the container runs PHP 8.3.
- Host PHP has `intl`, but container PHP does not.
- Composer in the IDE writes `vendor` for host PHP, while the app executes with container PHP.
- The IDE thinks the project is under one path, while the container runs it from `/var/www/html`.

Drift is dangerous because it creates false signals. The IDE may show green inspections or tests while the real app fails in the container. Or the container may work while the IDE reports problems that do not exist in the project runtime.

The fix is not to ignore the IDE. The fix is to make the IDE use the same runtime model as the project:

1. Docker connection points to the correct Engine.
2. The Compose service is documented.
3. PHP interpreter is configured from the container in the next workflow.
4. Composer and tests run through the same container PHP.
5. Path mappings use one clear host path and one clear container path.
