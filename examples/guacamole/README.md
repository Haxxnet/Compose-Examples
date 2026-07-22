# References

- https://hub.docker.com/r/guacamole/guacamole/
- https://theko2fi.medium.com/apache-guacamole-session-recordings-and-playback-in-browser-f095fcfca387

# Notes

## Installation

Before spawning up the Docker Compose stack you have to pre-supply an `initdb.sql` initialization file for the Postgresql database.

Please go ahead and create this init file in the corresponding Docker Volume bind mount.

````
# create volume dirs
mkdir -p /mnt/docker-volumes/guacamole/psql/init

# create init file dynamically and place it to the new location
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > /mnt/docker-volumes/guacamole/psql/init/initdb.sql
````

Afterwards, you can spawn up the Docker stack as follows:

````
docker compose up -d
````

## Authentication

The Guacamole login is available at `http://<YOUR-IP>:8080/guacamole`.

The default username is `guacadmin`. The default password is `guacadmin`.

> [!TIP]
> You can also access internal hosts somewhere else. Just use gluetun to force guacamole over vpn.
>
> See `docker-compose-gluetun-traefik-authentik-oidc.yml` for an example with wireguard and Authentik OIDC SSO.

## Custom Extensions

https://guacamole.apache.org/doc/gug/configuring-guacamole.html#overriding-guacamole-home

The docker container makes use of the path `/opt/guacamole/extensions`. One may bind-mount this volume but there is a better alternative.

One can advice the container to use a different home path via the environment variable `GUACAMOLE_HOME`. This way, every file placed there will be read-only copied to the real `/opt/guacamole/extensions` path inside the container, without affecting the regular extensions and install files. Please inspect the compose examples, which add the `GUACAMOLE_HOME=/etc/guacamole` env to support custom extensions.
