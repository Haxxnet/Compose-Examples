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

> [!Note]
> To save bandwidth, the Overleaf image only comes with a minimal install of TeXLive.

To upgrade to a complete TeXLive installation, run the installation script in the Overleaf container with the following command:
````
docker exec sharelatex tlmgr install scheme-full
````

Alternatively you can install packages manually as you need by replacing scheme-full with the package name.
