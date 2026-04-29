# Naming Convention

Service names are short and stable: `web`, `app`, `mysql`, `redis`.

Inside Compose, service names are DNS names. Manual `container_name` values are avoided so Compose can recreate and scale services more easily.
