# Resource Budget

Budget in this branch:

- `app`
  - memory: `256m`
  - cpu: `0.50`
  - role: main web surface, therefore larger budget

- `admin`
  - memory: `128m`
  - cpu: `0.25`
  - role: secondary helper surface, therefore smaller budget

The point is not perfect tuning. The point is to state deliberate numbers instead of pretending the host is infinite.
