# References

- https://hub.docker.com/r/guacamole/guacamole/
- https://theko2fi.medium.com/apache-guacamole-session-recordings-and-playback-in-browser-f095fcfca387

# Notes

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

The Guacamole login is available at `http://<YOUR-IP>:8080/guacamole`.

The default username is `guacadmin`. The default password is `guacadmin`.
