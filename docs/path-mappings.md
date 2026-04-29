# Path Mappings

During debugging, Xdebug reports container paths. PhpStorm opens host paths. Path mappings tell PhpStorm that those paths refer to the same file.

Expected mapping:

- host path: repository root on the developer machine;
- container path: `/var/www/html`;
- service: `app`;
- workdir: `/var/www/html`.

Example:

- container file: `/var/www/html/app/Http/Controllers/ProductController.php`;
- host file: `<project root>/app/Http/Controllers/ProductController.php`.

If this mapping is missing, the Xdebug connection can still reach PhpStorm, but the breakpoint may not bind to the correct file. A gray or ignored breakpoint is often a mapping problem, not an Xdebug installation problem.
