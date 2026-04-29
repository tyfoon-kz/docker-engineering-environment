# UID/GID Permissions

Linux checks file ownership by numeric IDs.

- UID means user id.
- GID means group id.
- Owner is the user id that owns the file.
- Group is the group id assigned to the file.

If a container writes into a bind mount as root, files on a Linux host can become root-owned. Then the normal developer user may need `sudo` to edit or delete them.

This reference runs the `app` service with:

```yaml
user: "${APP_UID:-1000}:${APP_GID:-1000}"
```

On Linux, set these values from:

```bash
id -u
id -g
```

On macOS and Windows, Docker Desktop uses a virtual machine and file sharing layer. Permission symptoms can look different, but the strategy is still documented so Linux users are not broken.

Do not use `chmod -R 777` as the normal fix. It opens access too broadly and does not fix the container user that created the wrong files.
