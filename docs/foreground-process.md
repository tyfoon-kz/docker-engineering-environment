# Foreground Process

A container lives while its main foreground process lives.

`hello-world` exits because its job is tiny:

```text
start -> print message -> finish -> container exits
```

`nginx` stays running because the web server process keeps listening:

```text
start -> nginx listens on port 80 -> process stays alive -> container stays running
```

An exited container is not automatically a Docker failure. First ask: what process was started, and was it supposed to run forever?
