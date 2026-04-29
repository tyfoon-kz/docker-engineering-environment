# Secret Handling

Secrets do not belong in the Dockerfile, build arguments, image `ENV`, committed `.env` files, or diagnostic output.

## Why not Dockerfile

Dockerfile lines are committed to Git and reviewed by many tools. A password there is already exposed.

## Why not ARG

`ARG` feels temporary, but build arguments can appear in build logs, image history, or CI metadata. It is not a safe secret channel.

## Why not image ENV

`ENV DB_PASSWORD=...` stores a sensitive value in the image configuration. Any container created from that image inherits the mistake.

## `.env.example` contract

`.env.example` lists required variables and safe placeholders:

```dotenv
DB_PASSWORD=change-me-locally
```

The real `.env` file is local and should not be committed or sent into the Docker build context.

## Diagnostics

Diagnostics may show that a secret is set, but must not print the value.
