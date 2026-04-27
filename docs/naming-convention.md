# Naming Convention

Service names:
- `app`
- `postgres`
- `redis`

They represent the architecture of the stack and are used for internal DNS.

`container_name` is added only to make runtime inspection clearer for a beginner:
- `ecommerce-app`
- `ecommerce-postgres`
- `ecommerce-redis`

The model still relies on service names for inter-service communication.
