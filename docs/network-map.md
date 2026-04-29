# Network Map

The stack uses two networks.

| Service | `frontend` | `backend` | Reason |
| --- | --- | --- | --- |
| `web` | yes | yes | Receives host HTTP and proxies to `app` |
| `app` | no | yes | Talks to internal dependencies |
| `mysql` | no | yes | Internal database only |
| `redis` | no | yes | Internal cache/queue only |

`backend` is marked `internal: true` to make the boundary explicit in the training reference.
