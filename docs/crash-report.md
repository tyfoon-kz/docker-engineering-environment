# Crash Report

Affected service:
- `broken-worker`

Observed behavior:
- the container exits immediately;
- the logs show a missing configuration file;
- there is no point in using `docker exec` first because the main process is already gone.

Root cause:
- the worker is configured to fail explicitly when `/run/config/worker.env` is missing.

First-line conclusion:
- this is a startup crash with a readable log trail, not a networking issue and not a readiness delay.
