# IDE Boundaries

PhpStorm and Docker have different jobs.

PhpStorm stays on the host:

- opens and edits project files;
- indexes code and shows navigation;
- stores IDE settings;
- connects to Docker as a client;
- starts IDE actions such as Run, Composer, test runner and debug listener.

Docker owns the runtime:

- runs the `app` service;
- provides the PHP version used by the service;
- provides PHP extensions installed in the image;
- provides the container working directory `/var/www/html`;
- defines the process environment seen by the application.

The Docker connection is only the door. It lets PhpStorm see Docker resources. It is not the PHP interpreter itself. The interpreter must later be configured to use the `app` service and `/var/www/html` workdir.

Expected boundary for this branch:

- host project path: repository root;
- container project path: `/var/www/html`;
- Compose service visible to IDE: `app`;
- runtime source of truth: container PHP from `php:8.3-cli`;
- IDE role: client and editor, not a second runtime.
