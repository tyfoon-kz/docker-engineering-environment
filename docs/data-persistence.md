# Data Persistence

`postgres_data` and `redis_data` are named volumes because they represent service state that should survive container recreation.

The idea is simple:
- containers may be rebuilt or restarted;
- state should remain stable unless the developer explicitly drops it.
