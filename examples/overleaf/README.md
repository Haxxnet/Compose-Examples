# References

- https://github.com/overleaf/overleaf
- https://github.com/overleaf/overleaf/blob/main/docker-compose.yml

# Notes

- Download `mongodb-init-replica-set.js` next to this compose file before first startup:
```bash
  curl -o mongodb-init-replica-set.js https://raw.githubusercontent.com/overleaf/overleaf/main/bin/shared/mongodb-init-replica-set.js
```
- MongoDB runs with a replica set (`--replSet overleaf`), which is required by newer Overleaf versions
- If migrating from an older setup (mongo 5.0, no replica set), initialize the replica set manually on existing data rather than relying on the init script


After spawning the stack, visit http://127.0.0.1:8888/launchpad to create your first admin user.
