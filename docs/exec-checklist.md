# docker exec Checklist

Use `docker exec` when:
- the container is alive;
- you have a concrete hypothesis;
- you need to confirm file presence, environment variables, working directory, or process state.

Do not use `docker exec` as the first reaction when:
- the container has already exited;
- the logs already explain the failure clearly;
- you are only "looking around" without a question.
