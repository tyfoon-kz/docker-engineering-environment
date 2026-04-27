# Lifecycle End Discipline

## Why cleanup matters

Containers should not accumulate forever.
When stopped containers remain without purpose, the environment becomes noisy and misleading.

## Why `stop` and `rm` are normal

`stop` ends the running state.
`rm` removes the runtime instance after it is no longer needed.

Used deliberately, they do not destroy engineering discipline.
They preserve it by keeping the environment understandable and reproducible.
