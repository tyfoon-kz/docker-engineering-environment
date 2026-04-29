# docker exec Checklist

`docker exec` means "enter a running container to check one question". It is not a general repair mode.

Use `docker exec` when:
- the container is alive;
- you have a concrete hypothesis;
- you need to confirm file presence, environment variables, working directory, process state, or network visibility;
- you will write down the question and the answer.

Examples:

```bash
docker compose exec healthy-web sh
docker compose exec healthy-web printenv
docker compose exec healthy-web pwd
docker compose exec healthy-web ls -la /usr/share/nginx/html
```

Do not use `docker exec` as the first reaction when:
- the container has already exited;
- the logs already explain the failure clearly;
- you are only "looking around" without a question;
- you plan to fix files by hand inside the live container.

For `broken-worker`, `exec` is not the first tool because the process exits immediately. The useful first tools are `ps`, `logs`, and `inspect`.
